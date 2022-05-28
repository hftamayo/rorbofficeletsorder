class CreateProductcatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :productcatalogs do |t|
      t.string :name
      t.string :string
      t.string :description
      t.integer :minquality
      t.integer :maxquantity
      t.decimal :price
      t.boolean :isavailable
      t.references :prodproviders, null: false, foreign_key: true
      t.references :prodlines, null: false, foreign_key: true
      t.timestamps
    end
  end
end
