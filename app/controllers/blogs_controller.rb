class BlogsController < ApplicationController

   before_filter :authenticate_user!, :except => [:index, :show]

	#before_filter :load_blog, :only => [:show, :edit, :update, :destroy]
	before_filter :load_blog, :except => [:index, :new, :create]

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def create
		#1. create an instance of the Blog
      #2. Set the values of the attributes of the blog from the data sent to the server from /blogs/new form
		#3. Request parameters available through the keyword params and params is a Hash
	
		blog_values = params[:blog]
		@blog = Blog.new(blog_values)
		if @blog.save
			flash[:notice] = "Hurray! Your blog with title #{@blog.title} is created"
			redirect_to blogs_path #, :notice => "Hurray! Your blog with title #{@blog.title} is created!"
		else
			render :new # render the view corresponding to the new action in this controller
		end
	end

	def show
		#1. ID of the blog record to be fetched from the DB and shown in this page
		# URL: /blogs/1, then params[:id] #=> 1
		# URL: /blogs/21, then params[:id] #=> 21
	end

	def edit
		#1. URL : /blogs/:id/edit
      #2. /blogs/5/edit #=> params[:id] => 5
	end
	
	def update
		# /blogs/4 with POST or PUT HTTP method
		#1. ID the blog record to be updated 
		#2. The form data (Title, Summary, Keywords, Published)
		if @blog.update_attributes(params[:blog])
			redirect_to @blog, :notice => "Hurray! Your blog entry is updated!"
		else
			render :edit
		end
	end

	def destroy
		#1 URL : /blogs/4 with DELETE HTTP method
		#2 ID of the blog to be deleted is passed as the request parameter
		#@blog = Blog.find(params[:id])
		if @blog.destroy
			redirect_to blogs_path, :notice => "Hurray! Your blog entry is deleted!"
		else
			redirect_to blogs_path, :notice => "Hurray! Your blog entry could not be deleted!"
		end		
	end

	private

	def load_blog
		@blog = Blog.find(params[:id])
	end

end
