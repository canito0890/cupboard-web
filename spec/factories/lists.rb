FactoryGirl.define do

  # lists sequence
  sequence (:list_name) do |n|
    "List #{n}"
  end

  factory :list do
    family
    family_user
    name { generate(:list_name) }
  end

end
