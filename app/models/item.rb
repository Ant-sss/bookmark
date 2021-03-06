class Item < ApplicationRecord

  has_many :itemtags, dependent: :destroy
  has_many :tags, through: :itemtags
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category


end
