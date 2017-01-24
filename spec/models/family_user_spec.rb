require 'rails_helper'

RSpec.describe FamilyUser do
  describe 'factories' do
    it { expect(FactoryGirl.create(:family_user)).to be_instance_of(FamilyUser) }
  end
  describe 'associations' do
    # belongs_to +Family+
    it { should belong_to(:family) }
  end
  describe 'validations' do
    subject { FactoryGirl.build(:family_user, password: '49b708ad-a25c-4776-91b0-4a3ed1eca731') }
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
    # xit { should validate_uniqueness_of(:email) }
  end
end
