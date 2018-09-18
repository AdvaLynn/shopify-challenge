class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :product
      t.references :order
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
