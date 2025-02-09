require 'rails_helper'

RSpec.describe "Offers", type: :system do
  let!(:offer1) { create(:offer, name: "Independant", position: 1) }
  let!(:offer2) { create(:offer, name: "PME", position: 2, highlight: true) }
  let!(:plan1) { create(:plan, name: "Basic Plan for PME", position: 1, offer: offer2) }
  let!(:plan2) { create(:plan, name: "Premium Plan for PME", position: 2, offer: offer2, highlight: true) }
  let!(:plan3) { create(:plan, name: "Basic Plan for independant", position: 1, offer: offer1) }

  it "shows the plans list for the highlighted offer" do
    visit offers_path

    expect(page).to have_content("Independant")
    expect(page).to have_content("Basic Plan")
    expect(page).to have_content("Premium Plan")
    expect(page).not_to have_content("Basic Plan for independant")
  end

  it "changes plans when another offer is selected" do
    visit offers_path

    tab = find('label', text: offer1.name)
    tab.click

    expect(page).to have_content("Basic Plan for independant")
  end
end
