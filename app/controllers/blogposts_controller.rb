class BlogpostsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@blogpost = current_user.blogposts.build(blogpost_params)
		if @blogpost.save
			flash[:success] = "Blog post created!"
			redirect_to current_user
		else
			redirect_to current_user, object: @blogpost
		end
	end

	def destroy
	end

	private

		def blogpost_params
			params.require(:blogpost).permit(:content)
		end
end