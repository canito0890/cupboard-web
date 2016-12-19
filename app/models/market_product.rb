class MarketProduct < ApplicationRecord

  # associations
  belongs_to :market
  belongs_to :product

end
