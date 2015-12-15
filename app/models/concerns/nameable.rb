module Nameable

  extend ActiveSupport::Concern

  included do

    validates :name, length: { in: 2..200 }, presence: true

  end

end
