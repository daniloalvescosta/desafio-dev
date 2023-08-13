FactoryBot.define do
  factory :type_transaction do
    type { Faker::Number.unique.between(from: 1, to: 10) } # Change the range as needed
    description { Faker::Lorem.sentence }
    nature { ['income', 'expense'].sample }
    signal { ['+', '-'].sample }
  end
end
