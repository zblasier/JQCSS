class CreateSalesItems < ActiveRecord::Migration
  def change
    create_table :sales_items do |t|
      t.string :name
      t.integer :category_id
      t.decimal :price

      t.timestamps
    end
  end
end
