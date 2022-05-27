class AddColsToProductlines < ActiveRecord::Migration[6.1]
  def change
    add_column :productlines, :name, :string
    add_column :productlines, :description, :text
    add_column :productlines, :isactive, :boolean    
  end
end