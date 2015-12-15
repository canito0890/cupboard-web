# Schema Information
#
# Table Name: products
# => id         :integer, not null, pk
# => name       :string, not null
# => category_id  :integer, not null, fk => categories
class Product < ActiveRecord::Base

  # concerns
  include Nameable

  # relations
  belongs_to :category
  has_many :purchase
  has_many :market_product

end
