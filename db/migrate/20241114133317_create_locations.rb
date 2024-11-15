# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :zip
      t.timestamps
    end
  end
end
