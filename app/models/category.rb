class Category < ApplicationRecord

  # associations
  has_many :products

  # validations
  validates :name, length: { in: 2..100 }, uniqueness: true, presence: true

end
