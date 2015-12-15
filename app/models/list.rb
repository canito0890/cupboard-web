class List < ActiveRecord::Base

  # concerns
  include Nameable

  # relations
  belongs_to :family
  has_many :list_product

end
