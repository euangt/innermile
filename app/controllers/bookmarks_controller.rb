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
    @bookmark.user = current_user 
    @bookmark.business = Business.find([params[:id])
    authorize @bookmark
    @bookmark.save! 
    # Written with the view that the bookmark icon will alternate between being bookmarked or not
  end 

  def destroy 
    @business = Business.find([params[:id]])
    authorize @bookmark
    current_user.bookmarks do |bookmark|
      if bookmark.business = @business
        bookmark.destroy
      end 
    end
  end  
end
