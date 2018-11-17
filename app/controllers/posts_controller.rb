class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :validate_user, only: [:edit, :update, :destroy]
  before_action :is_admin?, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:user_id, :title, :content)
    end

    # def validate_user
    #   unless current_user.posts.ids.to_s.include? params[:id]
    #     redirect_to root_path
    #     flash[:alert] = "You don't have permissions"
    #   end
    # end

    def is_admin?
      unless current_user.admin?
        flash[:alert] = "You dont have permissions"
        redirect_to root_path
      end
    end


end
