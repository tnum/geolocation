class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item, notice: 'Item saved successfully'
  end

  private

  def item_params
    params.require(:item).permit(:title)
  end

end