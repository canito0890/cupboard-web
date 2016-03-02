class CreateListProducts < ActiveRecord::Migration
  def change
    create_table :list_products do |t|
      t.references :list, index: true, foreign_key: true, null: false
      t.references :product, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
