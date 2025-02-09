FactoryBot.define do
  factory :plan do
    sequence(:name) { |n| "Plan #{n}" }
    sequence(:position) { |n| n }
    description { "New plan description" }
    highlight { false }
    price_cents { 1000 }
    association :offer
  end
end
