# Schema Information
#
# Table Name: market_products
# => id         :integer, not null, pk
# => name       :string, not null
# => market_id  :integer, not null, fk => markets
# => product_id  :integer, not null, fk => products
class MarketProduct < ActiveRecord::Base

  # relations
  belongs_to :market
  belongs_to :product

end
