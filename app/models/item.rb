class Item < ApplicationRecord

  has_many :itemtags, dependent: :destroy
  has_many :tags, dependent: :destroy, through: :itemtags
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :name, :author, :image, :text, 
  validates :category, numericality: { other_than: 1 }
end
