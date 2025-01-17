# frozen_string_literal: true

class CnabImportService < ApplicationService
  def self.import(file)
    File.foreach(file) do |line|
      data = line.chomp.split('|').map(&:strip)
      next if data.first == 'Data' # Pula o cabeçalho se houver algum

      date, value_str, cpf, card, hour, owner, store_name, type = data
      value = value_str.gsub('R$', '').strip.to_f

      Cnab.create!(
        date:,
        value:,
        cpf:,
        card:,
        hour:,
        owner:,
        store_name:,
        type_transaction_id: type.to_i
      )
    end
  end
end
