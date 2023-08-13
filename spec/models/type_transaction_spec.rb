# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TypeTransaction, type: :model do
  let(:type_transaction) { FactoryBot.create(:type_transaction) }

  describe 'factory' do
    it { expect(type_transaction).to be_valid }
    it { expect(type_transaction.type).to be_present }
    it { expect(type_transaction.description).to be_present }
    it { expect(type_transaction.nature).to be_present }
    it { expect(type_transaction.signal).to be_present }
  end
end
