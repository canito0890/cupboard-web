require 'rails_helper'

RSpec.describe List do
  describe 'factories' do
    it { expect(FactoryGirl.create(:list)).to be_instance_of(List) }
  end
  describe 'associations' do
    # belongs_to +List+
    it { should belong_to(:family) }
    # belongs_to +List+
    it { should belong_to(:family_user) }
  end
  describe 'validations' do
    # name
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(100) }
  end
end
