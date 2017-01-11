require 'rails_helper'

RSpec.describe FamilyUser do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe 'associations' do
    # belongs_to +Family+
    it { should belong_to(:family) }
  end
  describe 'validations' do
    subject { FactoryGirl.create(:family_user) }
    # name
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(100) }
    # it { should validate_uniqueness_of(:name) }
    # last names
    it { should validate_presence_of(:last_names) }
    it { should validate_length_of(:last_names).is_at_least(2).is_at_most(100) }
    # email
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email).is_at_least(2).is_at_most(100) }
    it { should validate_uniqueness_of(:email) }
  end
end
