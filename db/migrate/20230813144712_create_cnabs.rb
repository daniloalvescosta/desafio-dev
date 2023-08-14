# frozen_string_literal: true

class CreateCnabs < ActiveRecord::Migration[7.0]
  def change
    create_table :cnabs do |t|
      t.references :type_transaction, null: false, foreign_key: true
      t.date :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.datetime :hour
      t.string :owner
      t.string :store_name

      t.timestamps
    end
  end
end
