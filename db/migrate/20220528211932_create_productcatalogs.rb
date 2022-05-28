class CreateProductcatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :productcatalogs do |t|
      t.string :name
      t.string :string
      t.string :description
      t.integer :minquality
      t.integer :maxquantity
      t.decimal10’ :‘price
      t.decimal2’ :‘price
      t.boolean :isavailable
      t.string :Prodprovider
      t.string :references
      t.string :Prodlines
      t.string :references

      t.timestamps
    end
  end
end
