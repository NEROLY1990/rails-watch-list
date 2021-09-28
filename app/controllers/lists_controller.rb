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
    if @list.save
      redirect_to list_path(@list), notice: 'List was successfully created.'
    else
      render :new 
  end

  def show
    @show = Show.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end

