class ItemsController < ApplicationController
  def new
  end

  def index
    @items = Item.all
    @item = Item.new
    
  end

  def delete
  end

  def update
    @item.save
    if @item.save
        redirect_to items_path
      else
        render items_path
      end
  end

  def mark
  end

  def delete_all_marked
  end

  def delete_all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    @item.save
    if @item.save
        redirect_to items_path
      else
        render items_path
      end
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end

end
