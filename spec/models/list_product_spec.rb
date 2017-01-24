require 'rails_helper'

RSpec.describe ListProduct do
  describe 'factories' do
    it { expect(FactoryGirl.create(:list_product)).to be_instance_of(ListProduct) }
  end
  describe 'associations' do
    # belongs_to +List+
    it { should belong_to(:list) }
    # belongs_to +List+
    it { should belong_to(:product) }
  end
end
