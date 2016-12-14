class CreateFamilyUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :family_users do |t|
      t.belongs_to :family, null: false, index: true
      t.string :name, null: false
      t.string :last_names, null: false
      t.string :mail, null: false
      t.string :password, null: false
      t.timestamps
    end

    add_foreign_key :family_users, :families, on_delete: :cascade, on_update: :cascade
  end
end
