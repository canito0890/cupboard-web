class Market < ApplicationRecord

  # associations
  has_many :market_products

  # validations
  validates :name, length: { in: 2..100 }, presence: true

end
