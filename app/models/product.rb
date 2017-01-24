class Product < ApplicationRecord

  # associations
  belongs_to :category

  has_many :list_products
  has_many :lists, through: :list_products

  has_many :market_products
  has_many :markets, through: :market_products

  has_many :purchases

  # validations
  validates :name, length: { in: 2..100 }, presence: true

end
