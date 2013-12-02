class StaticPagesController < ApplicationController
  def home
  	@blogposts = Blogpost.paginate(page: params[:page])
  end

  def show
  end

  def about
  end
end
