require 'rails_helper'

RSpec.describe "Offers", type: :request do
  describe "GET /index" do
    let!(:offer1) { create(:offer, position: 1, highlight: false) }
    let!(:offer2) { create(:offer, position: 3, highlight: true) }
    let!(:offer3) { create(:offer, position: 2, highlight: false) }
    let!(:plan1) { create(:plan, offer: offer2, position: 1) }
    let!(:plan2) { create(:plan, offer: offer2, position: 2) }

    it "returns a successful response" do
      get offers_path
      expect(response).to have_http_status(:success)
    end

    it "assigns @offers ordered by position" do
      get offers_path
      expect(assigns(:offers)).to eq([offer1, offer3, offer2])
    end

    it "assigns @plans for the featured offer, ordered by position" do
      get offers_path, params: { offer_id: offer2.id }
      expect(assigns(:plans)).to eq([plan1, plan2])
    end
  end
end
