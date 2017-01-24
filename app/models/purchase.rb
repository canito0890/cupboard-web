class Purchase < ApplicationRecord

  # associations
  belongs_to :product

  validates :amount, :price, :image_url, presence: true

end
