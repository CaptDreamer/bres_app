class BlogpostsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@blogpost = current_user.blogposts.build(blogpost_params)
		@user = current_user
		@blogposts = @user.blogposts.paginate(page: params[:page])
		if @blogpost.save
			flash[:success] = "Blog post created!"
			redirect_to current_user
		else
			render template: "users/show"
		end
	end

	def destroy
	end

	def show
	end

	private

		def blogpost_params
			params.require(:blogpost).permit(:content, :subject)
		end
end