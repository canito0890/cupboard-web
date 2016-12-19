class ListProduct < ApplicationRecord

  # associations
  belongs_to :list
  belongs_to :product

end
