class Family < ActiveRecord::Base

  has_many :users

  validates :name, length: { in: 2..100 }, presence: true

end
