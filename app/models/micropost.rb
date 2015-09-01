class Micropost < ActiveRecord::Base
  # include CacheFilter
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    microposts = Rails.cache.read("posts")
    # byebug
    unless microposts
      followed_user_ids = "SELECT followed_id FROM relationships
      WHERE follower_id = :user_id"
      # posts = where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
      # user_id: user.id)
      microposts = Micropost.where(:user_id => user.id)
      Rails.cache.write("posts",microposts)
      # return posts
    end
    # byebug
    return microposts
  end
end
