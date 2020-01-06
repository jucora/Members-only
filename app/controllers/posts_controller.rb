class PostsController < ApplicationController
  before_action :member?, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
      flash[:success] = 'Your post was saved!'
    else
      redirect_to new_post_path
      flash[:danger]  = 'Your post was not saved!'
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

  def member?
    if !user_signed_in?
      redirect_to root_path
      flash[:alert] = 'Please Sign In!'
    end
	end
end
