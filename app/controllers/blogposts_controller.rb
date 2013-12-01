class BlogpostsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@blogpost = current_user.blogposts.build(blogpost_params)
		if @blogpost.save
			flash[:success] = "Blog post created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
	end

	private

		def blogpost_params
			params.require(:blogpost).permit(:content)
		end
end