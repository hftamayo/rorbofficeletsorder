class CreateProdproviders < ActiveRecord::Migration[6.1]
  def change
    create_table :prodproviders do |t|
      t.string :name
      t.string :contactname
      t.boolean :isactive

      t.timestamps
    end
  end
end
