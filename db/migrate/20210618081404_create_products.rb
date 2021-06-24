class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :product_category, null: false, foreign_key: true
      t.string :pname

      t.timestamps
    end
  end
end
