# frozen_string_literal: true

class CnabController < ApplicationController
  def index
    @cnabs = Cnab.all
    @entries = CnabAnalyticsService.entries
    @outflows = CnabAnalyticsService.outflows
    @balance = CnabAnalyticsService.balance
  end

  def import
    file = params[:file]
    CnabImportService.import(file)

    @cnabs = Cnab.all
    redirect_to root_path
  end

  def destroy
    @cnab = Cnab.find(params[:id])
    @cnab.destroy

    redirect_to root_path, status: :see_other
  end
end
