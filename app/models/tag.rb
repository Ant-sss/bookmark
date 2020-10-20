class Tag < ApplicationRecord

  has_many :itemtags
  has_many :items, through: :itemtags

  validates :name, uniqueness: true
end
