class PostsController < ApplicationController
  before_action :find_business

  # def index
  #   @posts = Post.where(business_id: @business.id)
  # end

  # def new
  #   @post = Post.new
  #   authorize @post
  # end

  def create
    @post = Post.new(post_params)
    authorize @post
    @business.user = current_user
    @post.business = @business
    if @post.save
      redirect_to business_path(@business)
    else
      render 'business/show'
    end
  end

  private

  def find_business
    @business = Business.find(params[:business_id])
  end

  def post_params
    params.require(:post).permit(:content, :post_image, :business_id)
  end
end
