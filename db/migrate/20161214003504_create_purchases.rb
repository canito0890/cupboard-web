class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.belongs_to :product, null: false, index: true
      t.float :amount, null: false, default: 0.0
      t.decimal :price, null: false, default: 0.0
      t.string :image_url, null: true
      t.timestamps
    end

    add_foreign_key :purchases, :products, on_delete: :cascade, on_update: :cascade
  end
end
