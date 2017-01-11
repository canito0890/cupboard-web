FactoryGirl.define do

  # families sequence
  sequence (:family_user_name) do |n|
    "Family User #{n}"
  end

  sequence (:family_user_email) do |n|
    "family#{n}@user.com"
  end

  factory :family_user do
    family
    name { generate(:family_user_name) }
    last_names { generate(:family_user_name) }
    email { generate(:family_user_email) }
    password '49b708ad-a25c-4776-91b0-4a3ed1eca731'
    password_confirmation '49b708ad-a25c-4776-91b0-4a3ed1eca731'
    
  end

end
