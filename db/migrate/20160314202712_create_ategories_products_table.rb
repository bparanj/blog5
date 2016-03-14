class CreateAtegoriesProductsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_products do |t|
      t.integer :category_id
      t.integer :product_id
    end
  end
end
