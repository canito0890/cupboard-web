class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :last_names, null: false
      t.string :password, null: false
      t.references :family, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
