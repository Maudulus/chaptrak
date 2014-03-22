class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: 'Post saved!'
    else
      redirect_to root_path, notice: 'Error: post not saved'
    end
  end

  protected
  def post_params
    params.require(:post).permit(:title, :author, :body, :picture)
  end

end

