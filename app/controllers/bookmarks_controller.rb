class BookmarksController < ApplicationController

  #route : /lists/:list_id/bookmarks/:id(.:format) 
  #create/new/destroy

  #new
  def new
    @bookmark = Bookmark.find(params[:list_id])
    @bookmark = Bookmark.new
  end
  
  
  #bookmarks#destroy
  #def destroy
  #  @bookmark = Bookmark.find(params[:list_id])
  #  @bookmark.destroy
  #  redirect_to lists_path
  #end
  def create
    @list = List.find(params[:list_id])
    @bookmark = bookmark.find(params[:bookmark_id][:bookmark])
    @bookmarks.each do
      @bookmark = Bookmark.new
      @bookmark.list = list
      @bookmark.save
    end
    redirect_to list_bookmarks_path(@list.bookmark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:list_id])
    @bookmark.destroy
    redirect_to list_bookmarks_path(@list.bookmark), notice: 'Bookmark was successfully destroyed.'
  end

end
