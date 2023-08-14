# frozen_string_literal: true

class CreateTypeTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :type_transactions do |t|
      t.string :description
      t.string :nature
      t.string :signal

      t.timestamps
    end
  end
end
