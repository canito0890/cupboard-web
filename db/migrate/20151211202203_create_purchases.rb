class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.decimal :amount, null: false
      t.decimal :price, null: false
      t.string :extension, null: false
      t.references :product, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
