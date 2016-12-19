class List < ApplicationRecord

  # associations
  has_many :list_products
  has_many :products, through: :list_products

  

end
