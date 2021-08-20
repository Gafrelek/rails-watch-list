class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def create
    @list = List.new(list_params)
    @list.save

    redirect_to list_path(@list)
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show; end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end

end