class OffersController < ApplicationController
  def index
    @offers = Offer.includes(:plans).order(position: :asc)
    @featured_offer = @offers.find_by(id: params[:offer_id]) || @offers.find_by(highlight: true) || @offers.first
    @plans = @featured_offer&.plans&.sort_by(&:position) || []
  end
end
