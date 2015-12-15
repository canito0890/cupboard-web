# Schema Information
#
# Table Name: markets
# => id         :integer, not null, pk
# => name       :string, not null
class Market < ActiveRecord::Base

  # concerns
  include Nameable

  # relations
  has_many :market_product


end
