class CreateProductCategoryHeadings < ActiveRecord::Migration[6.1]
  def change
    create_table :product_category_headings do |t|
      t.string :category_name

      t.timestamps
    end
  end
end
