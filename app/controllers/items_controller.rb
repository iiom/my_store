class ItemsController < ApplicationController

  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{i.price}" }.join("<br/>")
  end

  # /items/1 GET
  def show
  end

  # /items/new GET
  def new
  end

  # /items/1/edit GET
  def edit
  end

  # /items POST
  def create
  end

  def update
  end

  def destroy
  end
end
