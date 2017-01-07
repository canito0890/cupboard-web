class List < ApplicationRecord

  # associations
  has_many :list_products
  has_many :products, through: :list_products

  # validates
  validates :name, length: { in: 2..100 }, presence: true
  validates :complete, inclusion: [true, false]

end
