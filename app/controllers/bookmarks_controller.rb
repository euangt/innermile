class BookmarksController < ApplicationController

  def index
    policy_scope(Bookmark)
    @businesses = current_user.bookmarked_businesses
    @posts = @businesses.map do |business|
      business.posts
    end.flatten
  end

  def new
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def create
    @business = Business.find(params[:business_id])
    @bookmark = Bookmark.new
    authorize @bookmark
    @bookmark.business = @business
    @bookmark.user = current_user
    if @bookmark.save!
      redirect_to business_path(@bookmark.business_id)
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.destroy
    redirect_to business_path(@bookmark.business)
  end
end
