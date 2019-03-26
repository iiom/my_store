class ItemsController < ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]  #before_filter

  def index
    @items = Item.all
  end

  # /items/1 GET
  def show
    unless @item
      render text: "Page not found", status: 404
    end
  end

  # /items/new GET
  def new
    @item = Item.new
  end

  # /items/1/edit GET
  def edit
  end

  # /items POST
  def create
    @item = Item.create(item_params)
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render "new"
    end
  end

  def update
    @item.update_attributes(item_params)
    if @item.errors.empty?
      redirect_to item_path(@item)
    else
      render "edit"
    end
  end

  def destroy
    @item.destroy
    redirect_to action: "index"
  end

private
  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:price, :name, :weight, :description)
  end
end
