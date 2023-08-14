# frozen_string_literal: true

# spec/controllers/cnab_controller_spec.rb
require 'rails_helper'

RSpec.describe CnabController, type: :controller do
  let(:type_transaction) { FactoryBot.create(:type_transaction, id: 1) }

  before do
    type_transaction
  end

  describe 'GET #index' do
    it 'assigns @cnabs, @entries, @outflows, and @balance' do
      get :index
      expect(assigns(:cnabs)).to eq(Cnab.all)
      expect(assigns(:entries)).to eq(CnabAnalyticsService.entries)
      expect(assigns(:outflows)).to eq(CnabAnalyticsService.outflows)
      expect(assigns(:balance)).to eq(CnabAnalyticsService.balance)
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #import' do
    let(:file_path) { Rails.root.join('CNAB_test.txt') }
    let(:file) { fixture_file_upload(file_path) }

    it 'imports CNAB data and assigns @cnabs' do
      post :import, params: { file: }
      expect(Cnab.count).to be > 0
      expect(assigns(:cnabs)).to eq(Cnab.all)
      expect(response).to have_http_status(:found)
    end
  end

  describe 'DELETE #destroy' do
    let(:cnab) { FactoryBot.create(:cnab, type_transaction:) }

    it 'destroys the CNAB record' do
      expect do
        delete :destroy, params: { id: cnab.id }
      end.to change(Cnab, :count).by(0)
      expect(response).to have_http_status(:see_other)
      expect(response).to redirect_to(root_path)
    end
  end
end
