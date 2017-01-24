FactoryGirl.define do

  # families sequence
  sequence (:product_name) do |n|
    "Product #{n}"
  end

  factory :product do
    category
    name { generate(:product_name) }
  end

end
