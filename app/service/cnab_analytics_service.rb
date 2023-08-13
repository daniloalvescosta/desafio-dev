class CnabAnalyticsService < ApplicationService
  def self.entries
    ids = TypeTransaction.where(nature:'Entrada').ids
    Cnab.where(type_transaction: ids).sum(:value)
  end

  def self.outflows
    ids = TypeTransaction.where(nature:'Saída').ids
    Cnab.where(type_transaction: ids).sum(:value)
  end

  def self.balance
    entries - outflows
  end
end