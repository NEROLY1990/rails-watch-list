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
    @bookmark_id = bookmark_id.find(params[:bookmark_id][:bookmark])
    @bookmarks_id.each do |bookmark|
      bookmark_id = Bookmark.new
      bookmark_id.list = list
      bookmark_id.save
    end
    redirect_to bookmark_path(@list.bookmark)
  end
  

  def destroy
    @bookmark = Bookmark.find(params[:list_id])
    @bookmark.destroy
    redirect_to list_path, notice: 'Bookmark was successfully destroyed.'
  end

end
