require 'rails_helper'

RSpec.describe Offer, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:position) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_uniqueness_of(:position) }
    it { is_expected.to validate_numericality_of(:position) }
  end

  describe 'associations' do
    let(:offer) { create(:offer) }
    let(:plan) { create(:plan, offer: offer) }
    it { expect(offer.plans).to include(plan) }
  end
end
