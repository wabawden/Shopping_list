class ItemsController < ApplicationController
  def new
  end

  def index
    @items = Item.all.order(id: :asc)
    @item = Item.new
    
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
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
    @item = Item.find(params[:id])
    @item.marked = !@item.marked
    @item.save
    redirect_to items_path
  end

  def delete_all_marked
    Item.where(marked: true).destroy_all
    redirect_to items_path
  end

  def delete_all
    Item.delete_all
    redirect_to items_path
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
