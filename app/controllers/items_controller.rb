class ItemsController < ApplicationController
  before_action :search_item
  before_action :category_set

  def index
    @items = Item.all.order(created_at: :desc).last(6)
    @item_count = Item.count
  end

  def new
    @item = ItemsTag.new
  end

  def create
    @item = ItemsTag.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def search
    @results = @p.result
  end

  private



  private

  def item_params
    params.require(:items_tag).permit(:title, :image, :author, :text, :category_id)
    params.require(:items_tag).permit(:name).split(nil)
    end

  def search_item
    @p = Item.ransack(params[:q])
  end

  def category_set
    @category = Category.where.not(id: 1)
  end

end
