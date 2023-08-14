# frozen_string_literal: true

FactoryBot.define do
  factory :type_transaction do
    description { Faker::Lorem.sentence }
    nature { %w[income expense].sample }
    signal { ['+', '-'].sample }
  end
end
