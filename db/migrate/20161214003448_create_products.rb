class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.belongs_to :category, null: false, index: true
      t.string :name, null: false
      t.timestamps
    end
  end
end