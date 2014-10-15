class CommentsController < ApplicationController
	
	before_filter :load_blog_and_blog_post

	def index
		@comments = @blog_post.comments.all
	end

	def new
		@comment = @blog_post.comments.build
	end

	def create
		@comment = @blog_post.comments.build(params[:comment])
		if @comment.save
			flash[:notice] = "Comment saved!"
			redirect_to blog_blog_post_path(@blog, @blog_post)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
		@comment = @blog_post.comments.find(params[:id])
		if @comment.destroy
			flash[:notice] = "Comment deleted!"
			redirect_to blog_blog_post_path(@blog, @blog_post)
		else
			flash[:notice] = "Comment can not be deleted!"
			redirect_to blog_blog_post_path(@blog, @blog_post)
		end
	end

	def show
		@comment = @blog_post.comments.find(params[:id])
	end


	private
	
	def load_blog_and_blog_post
		@blog = Blog.find(params[:blog_id])
		@blog_post = @blog.blog_posts.find(params[:blog_post_id])
	end
end
