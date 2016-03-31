require 'rails_helper'

RSpec.describe Family, type: :model do
  describe "factories" do
    it { expect(FactoryGirl.create(:family)).to be_instance_of(Family) }
  end
  describe "associations" do
    # has_many +Product+
    it { should have_many(:users) }
  end
  describe "validations" do
    subject { FactoryGirl.create(:family) }
    # name
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
  end
end
