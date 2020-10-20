class ItemsController < ApplicationController
  before_action :search_item
  before_action :category_set

  def index
    @items = Item.all.order(created_at: :desc).last(6)
    @item_count = Item.count
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = ItemsTag.new
  end

  def create
    @item = ItemsTag.new(itemtag_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else 
      render "edit"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    binding.pry
    if @item.destroy
      redirect_to root_path
    else
      render "show"
    end
  end

  def search
    @results = @p.result
  end

  private

  def itemtag_params
    params.require(:items_tag).permit(:title, :image, :author, :text, :category_id)
    params.require(:items_tag).permit(:name).split(nil)
  end

  def item_params
    params.require(:item).permit(:title, :image, :author, :text, :category_id)
  end

  def search_item
    @p = Item.ransack(params[:q])
  end

  def category_set
    @category = Category.where.not(id: 1)
  end

end
