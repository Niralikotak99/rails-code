class CreateProductCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categories do |t|
      t.references :product_category_heading, null: false, foreign_key: true
      t.string :category_name
      t.text :description

      t.timestamps
    end
  end
end
