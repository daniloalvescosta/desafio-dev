require 'rails_helper'

RSpec.describe CnabAnalyticsService, type: :service do
  describe '.entries' do
    it 'calculates total entries' do
      entry_type = FactoryBot.create(:type_transaction, nature: 'Entrada')
      FactoryBot.create_list(:cnab, 3, type_transaction: entry_type)

      expect(CnabAnalyticsService.entries).to eq(Cnab.where(type_transaction: entry_type).sum(:value))
    end
  end

  describe '.outflows' do
    it 'calculates total outflows' do
      outflow_type = FactoryBot.create(:type_transaction, nature: 'Saída')
      FactoryBot.create_list(:cnab, 3, type_transaction: outflow_type)

      expect(CnabAnalyticsService.outflows).to eq(Cnab.where(type_transaction: outflow_type).sum(:value))
    end
  end

  describe '.balance' do
    it 'calculates the balance' do
      allow(CnabAnalyticsService).to receive(:entries).and_return(100)
      allow(CnabAnalyticsService).to receive(:outflows).and_return(50)

      expect(CnabAnalyticsService.balance).to eq(50)
    end
  end
end
