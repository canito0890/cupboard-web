class CreateListProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :list_products do |t|
      t.belongs_to :list, null: false, index: true
      t.belongs_to :product, null: false, index: true
      t.boolean :bought, null: false, default: false
      t.string :amount, null: false
      t.timestamps
    end

    add_foreign_key :list_products, :lists, on_delete: :cascade, on_update: :cascade
    add_foreign_key :list_products, :products, on_delete: :cascade, on_update: :cascade
  end
end
