# frozen_string_literal: true

FactoryBot.define do
  factory :cnab do
    type_transaction { nil }
    date { '2021-04-27' }
    value { '42.80' }
    cpf { '111.222.333-4' }
    card { 'Discover' }
    hour { '09:30:00' }
    owner { 'Nova Grace' }
    store_name { 'Starlight Souvenirs' }
  end
end
