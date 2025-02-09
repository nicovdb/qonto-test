require 'rails_helper'

RSpec.describe Plan, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price_cents) }
    it { is_expected.to validate_presence_of(:position) }
    it { is_expected.to validate_numericality_of(:price_cents).is_greater_than(0) }
    it { is_expected.to belong_to(:offer) }
  end

  let(:offer) { create(:offer) }
  let(:plan) { create(:plan, offer: offer) }

  describe 'association' do
    it 'belongs to the proper offer' do
      expect(plan.offer).to eq(offer)
    end
  end

  describe '#price' do
    it 'returns the price from price_cents' do
      expect(plan.price).to eq(10)
    end
  end
end
