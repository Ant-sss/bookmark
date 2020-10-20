class ItemsTag

  include ActiveModel::Model
  attr_accessor :title, :author, :text, :category_id, :name, :image

    validates :title, :author, :image, :text, presence: true
    validates :category_id, numericality: { other_than: 1 }

    def save
      item = Item.create(title: title, author: author, text: text, category_id: category_id, image: image)
      tag = Tag.where(name: name).first_or_initialize
      tag.save

      Itemtag.create(item_id: item.id, tag_id: tag.id)
    end
  end