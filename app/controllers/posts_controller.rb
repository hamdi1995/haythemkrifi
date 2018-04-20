class PostsController < ApplicationController
	def index 
		@posts = Post.all
	end
	def show
        @post = Post.find(params[:id])
	end
	def create 
		@post = Post.new(:params.require(:post,:title,:body,:category))
		if @post.save
			redirect_to post_path,:notice => "your post has been saved"
		else
			render "new"
		end
		end

	def new 
		@post = Post.new
		@category = Category.all
	end 
	def edit 
		
	end 
	def update 
	end 
	def delete 
	end 
end
