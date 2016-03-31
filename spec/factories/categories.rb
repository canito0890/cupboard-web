FactoryGirl.define do

  # categories sequence
  sequence (:category_name) do |n|
    "Category #{n}"
  end

  factory :category do
    name { generate(:category_name) }
  end

end
