class Category < ActiveRecord::Base

  # associations
  has_many :products

  # concerns
  include Nameable

  # validations
  validates :name, uniqueness: true

end
