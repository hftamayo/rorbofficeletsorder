class CreateProdlines < ActiveRecord::Migration[6.1]
  def change
    create_table :prodlines do |t|
      t.string :name
      t.text :description
      t.boolean :isactive

      t.timestamps
    end
    add_index :prodlines, :name, unique: true
  end
end
