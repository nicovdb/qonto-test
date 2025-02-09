class OffersController < ApplicationController
  def index
    @offers = Offer.order(position: :asc)
    @featured_offer = @offers.find_by(id: params[:offer_id]) || @offers.find_by(highlight: true) || @offers.first
    @plans = @featured_offer.plans.order(position: :asc)
  end
end
