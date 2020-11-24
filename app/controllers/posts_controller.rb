class PostsController < ApplicationController
  before_action :find_post

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    @post.business = current_user.business
    if @post.save
      redirect_to business_path(@post.business)
    else
      render :new
    end
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def post_params
    params.require(:post).permit(:content, :post_image)
  end
end
