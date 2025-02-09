FactoryBot.define do
  factory :option do
    description { "New option"}
    detail { "New option detail" }
    association :plan
  end
end
