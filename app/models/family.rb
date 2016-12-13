class Family < ApplicationRecord

  # associations
  has_many :family_users

  # validations
  validates :name, length: { in: 2..100 }, presence: true

end
