class StaticPagesController < ApplicationController
  def home
  	@blogpost = current_user.blogposts.build if signed_in?
  end

  def show
  end

  def about
  end
end
