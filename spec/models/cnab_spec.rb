# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cnab, type: :model do
  let(:type_transaction) { FactoryBot.create(:type_transaction) }
  let(:cnab) { FactoryBot.create(:cnab, type_transaction:) }

  describe 'factory' do
    it { expect(cnab).to be_valid }
    it { expect(cnab.date).to be_present }
    it { expect(cnab.value).to be_present }
    it { expect(cnab.cpf).to be_present }
    it { expect(cnab.card).to be_present }
    it { expect(cnab.hour).to be_present }
    it { expect(cnab.owner).to be_present }
    it { expect(cnab.store_name).to be_present }
    it { expect(cnab.type_transaction_id).to be_present }
  end
end
