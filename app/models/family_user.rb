class FamilyUser < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable, :omniauthable

  include DeviseTokenAuth::Concerns::User

  # associations
  belongs_to :family

  # validations
  validates :name, length: { in: 2..100 }, presence: true
  validates :last_names, length: { in: 2..100 }, presence: true
  validates :email, length: { in: 2..100 }, uniqueness: true, presence: true

end
