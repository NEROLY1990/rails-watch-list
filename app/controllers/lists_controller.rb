class ListsController < ApplicationController

  def new
    @list = List.new(list_params)
    @list.save
  end
  
  def index
    @list = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def show
    @show = Show.find(param[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end

