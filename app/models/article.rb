class Article < ActiveRecord::Base

  validates :title, exclusion: { in: %w(www us ca jp),
                        message: "%{value} is reserved." }

  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 5}

end
