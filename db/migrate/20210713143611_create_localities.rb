class CreateLocalities < ActiveRecord::Migration[6.1]
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :national_id
      t.references :department, null: false, foreign_key: true
      t.string :category
      t.decimal :lat, precision: 8, scale: 2
      t.decimal :lon, precision: 8, scale: 2

      t.timestamps
    end
  end
end
