# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CnabImportService, type: :service do
  describe '.import' do
    let(:file_path) { Rails.root.join('CNAB.txt') }
    let(:file) { Rack::Test::UploadedFile.new(file_path) }

    before do
      allow(File).to receive(:foreach).and_yield("2023-08-12 | R$ 150.00 | 12345678900 | VISA | 10:30:00 | John Doe | Acme Store | 3\n")
    end

    it 'imports CNAB data' do
      type_transaction = FactoryBot.create(:type_transaction, id: 3)
      expect do
        CnabImportService.import(file)
      end.to change(Cnab, :count).by(1)

      cnab = Cnab.last
      expect(cnab.date.strftime('%F')).to eq('2023-08-12')
      expect(cnab.value).to eq(150.0)
      expect(cnab.cpf).to eq('12345678900')
      expect(cnab.card).to eq('VISA')
      expect(cnab.hour.strftime('%T')).to eq('10:30:00')
      expect(cnab.owner).to eq('John Doe')
      expect(cnab.store_name).to eq('Acme Store')
      expect(cnab.type_transaction).to eq(type_transaction)
    end
  end
end
