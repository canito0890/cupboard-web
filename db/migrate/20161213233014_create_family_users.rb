class CreateFamilyUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :family_users do |t|

      t.timestamps
    end
  end
end
