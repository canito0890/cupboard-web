class Product < ApplicationRecord

  # associations
  has_many :list_products
  has_many :lists, through: :list_products

  has_many :market_products
  has_many :markets, through: :market_products

  has_many :purchases

end
