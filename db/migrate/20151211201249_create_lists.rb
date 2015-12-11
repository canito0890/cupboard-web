class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.references :family, polymorfic: true, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
