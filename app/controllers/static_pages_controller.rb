class StaticPagesController < ApplicationController
  before_action :authenticate_admin!, :except => [:admin_sign, :home]
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def admin_sign
  end

  def admin_session

  end

  def help
  end

  def about
  end

  def contact
  end

  def test
  end
end
