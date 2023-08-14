FactoryBot.define do
  factory :type_transaction do
    description { Faker::Lorem.sentence }
    nature { ['income', 'expense'].sample }
    signal { ['+', '-'].sample }
  end
end
