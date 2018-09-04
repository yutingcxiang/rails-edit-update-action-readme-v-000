class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
 
  def update
    @post = Post.find_by(id: params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
end
