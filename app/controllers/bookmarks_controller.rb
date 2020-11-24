class BookmarksController < ApplicationController

  def index
    @bookmarks = current_user.bookmarks #policy_scope(Bookmark)?
    authorize @bookmark
  end

  def new 
    @bookmark = Bookmark.new
    authorize @bookmark
  end 
  
  def create 
    @bookmark = Bookmark.new
    @bookmark.business_id = params[:id]
    @bookmark.user_id = current_user.id
    authorize @bookmark
    if @bookmark.save! 
      redirect_to business_path(@bookmark.business_id)
    end
    # Written with the view that the bookmark icon will alternate between being bookmarked or not
  end 

  def destroy 
    @business = Business.find(params[:id])
    authorize @bookmark
    current_user.bookmarks do |bookmark|
      if bookmark.business_id = @business.id
        bookmark.destroy
      end 
    end
  end  
end
