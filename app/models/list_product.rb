class ListProduct < ApplicationRecord

  # associations
  belongs_to :list
  belongs_to :product

  # validations
  validates :amount, presence: true
  # validates

end
