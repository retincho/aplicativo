class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :complete_name
      t.string :name
      t.integer :national_id
      t.references :province, null: false, foreign_key: true
      t.string :category
      t.decimal :lat, precision: 8, scale: 2
      t.decimal :lon, precision: 8, scale: 2

      t.timestamps
    end
  end
end
