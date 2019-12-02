class StaticpagesController < ApplicationController
  def home
    if logged_in?
      @micropost = Micropost.new
      @microposts = current_user.feed
      render 'users/home_feeds'
    else
      render 'staticpages/home'
    end
  end

  def about
  end

end
