class StaticPageController < ApplicationController

  def home
    if user_signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.page(params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
