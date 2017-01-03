require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "factories" do
    #it { expect(FactoryGirl.create(:category)).to be_instance_of(Category) }
  end
  describe "associations" do
    # has_many +Product+
    it { should have_many(:products) }
  end
  describe "validations" do
    subject { FactoryGirl.create(:category) }
    # name
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
    it { should validate_uniqueness_of(:name) }
  end
end
