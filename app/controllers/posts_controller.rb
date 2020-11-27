class PostsController < ApplicationController
  before_action :find_business, only: [:create, :destroy]

  def index
    @posts = policy_scope(Post)
    @business = Business.new
  end

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
      redirect_to business_path(@business, anchor: "recent_posts")
    else
      render 'businesses/show'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    authorize @post
    @post.destroy
    redirect_to business_path(@business, anchor: "recent_posts")
  end

  def edit 
    find_business
    @post = Post.find(params[:id])
    authorize @post
  end 

  def update 
    find_business
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      redirect_to business_path(@business, anchor: "recent_posts")
    else  
      render :edit 
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
