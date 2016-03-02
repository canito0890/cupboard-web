class CreateMarketProducts < ActiveRecord::Migration
  def change
    create_table :market_products do |t|
      t.references :market, index: true, foreign_key: true, null: false
      t.references :product, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
