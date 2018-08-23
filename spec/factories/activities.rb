# frozen_string_literal: true

FactoryBot.define do
  factory :activity do
    association :activity_type
    association :taxation_form, :monthly_fixed_price
    association :organization, :global_dominator

    trait :activity_usn do
      association :activity_type
      association :taxation_form, :monthly_fixed_price1
      association :organization, :alexey
    end
  end
end
