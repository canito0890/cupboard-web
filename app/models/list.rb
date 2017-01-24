class List < ApplicationRecord

  # associations
  belongs_to :family
  belongs_to :family_user
  has_many :list_products
  has_many :products, through: :list_products

  # validates
  validates :name, length: { in: 2..100 }, presence: true
  validates :complete, inclusion: [true, false]

end
