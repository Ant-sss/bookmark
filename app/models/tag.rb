class Tag < ApplicationRecord

  has_many :itemtags
  has_many :items, through: :itemtags
  
end
