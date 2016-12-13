class FamilyUser < ApplicationRecord

  # associations
  belongs_to :family

  # validations
  validates :name, length: { in: 2..100 }, presence: true

end
