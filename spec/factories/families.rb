FactoryGirl.define do

  # families sequence
  sequence (:family_name) do |n|
    "Family #{n}"
  end

  factory :family do
    name { generate(:family_name) }
  end

end
