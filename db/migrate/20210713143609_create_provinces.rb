class CreateProvinces < ActiveRecord::Migration[6.1]
  def change
    create_table :provinces do |t|
      t.string :iso_id
      t.string :name
      t.integer :national_id
      t.references :country, null: false, foreign_key: true
      t.string :complete_name
      t.string :iso_name
      t.decimal :lat, precision: 8, scale: 2
      t.decimal :lon, precision: 8, scale: 2

      t.timestamps
    end
  end
end
