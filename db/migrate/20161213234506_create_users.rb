class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: :bigserial do |t|
      t.string :name, null: false
      t.string :last_names, null: false
      # t.string :mail, null: false
      t.string :password, null: false
      t.timestamps
    end
  end
end
