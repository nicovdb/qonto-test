require 'rails_helper'

RSpec.describe Option, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to belong_to(:plan) }
  end

  let(:offer) { create(:offer) }
  let(:plan) { create(:plan, offer: offer) }
  let(:option) { create(:option, plan: plan) }

  describe 'association' do
    it 'belongs to the proper plan' do
      expect(option.plan).to eq(plan)
    end
  end
end
