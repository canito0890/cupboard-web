class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.belongs_to :family, null: true
      t.belongs_to :family_user, null: false
      t.string :name, null: false
      t.timestamps
    end

    add_foreign_key :lists, :families, on_delete: :cascade, on_update: :cascade
    add_foreign_key :lists, :family_users, on_delete: :cascade, on_update: :cascade
  end
end
