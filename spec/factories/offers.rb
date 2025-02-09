FactoryBot.define do
  factory :offer do
    sequence(:name) { |n| "Offer #{n}" }
    sequence(:position) { |n| n }
    highlight { false }
    description { "Test Offer description" }
  end
end
