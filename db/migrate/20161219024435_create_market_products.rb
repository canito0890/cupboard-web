class CreateMarketProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :market_products, id: :bigserial do |t|
      t.belongs_to :market, null: false, index: true
      t.belongs_to :product, null: false, index: true
      t.timestamps
    end

    add_foreign_key :market_products, :markets, on_delete: :cascade, on_update: :cascade
    add_foreign_key :market_products, :products, on_delete: :cascade, on_update: :cascade
  end
end
