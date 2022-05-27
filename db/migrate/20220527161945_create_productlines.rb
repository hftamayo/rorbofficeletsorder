class CreateProductlines < ActiveRecord::Migration[6.1]
  def change
    create_table :productlines do |t|

      t.timestamps
    end
  end
end
