class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
   end

  def create
    @list = List.new(list_path) #path or params?
 
    if @list.save
      redirect_to lists_path(list)
    else
      render :new
    end
  end
 
  private
 
    def pages_params
      params.require(:list).permit(:title, :author, :body)
    end

    def edit
      @list = List.find(params[:id])
    end

    def destroy
      List.find(params[:id]).destroy
      redirect_to list_path
    end
end
