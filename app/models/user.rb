# Schema Information
#
# Table Name: users
# => id         :integer, not null, pk
# => name       :string, not null
# => last_names :string, not null
# => password   :string, not null
# => family_id  :integer, not null, fk => families
class User < ActiveRecord::Base
  belongs_to :family

  # Validations
  validates :name, :last_names, :password, presence: true
  validates :name, length: { in: 2..100 }
  validates :last_names, length: { in: 2..100 }

end
