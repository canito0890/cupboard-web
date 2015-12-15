# Schema Information
#
# Table Name: families
# => id         :integer, not null, pk
# => name       :string, not null
class Family < ActiveRecord::Base

  # concerns
  include Nameable

  # relations
  has_many :users

end
