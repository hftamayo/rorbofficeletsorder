class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :minquantity
      t.integer :maxquantity
      t.decimal :price
      t.boolean :isavailable
      t.references :providers, null: false, foreign_key: true
      t.references :prodlines, null: false, foreign_key: true

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
