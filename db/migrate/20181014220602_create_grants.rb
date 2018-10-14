class CreateGrants < ActiveRecord::Migration[5.2]
  def change
    create_table :grants do |t|
      t.integer :grantable_id, null: false
      t.string :grantable_type, null: false
      t.string :mode, null: false

      t.timestamps
    end

    add_index :grants, :grantable_id
    add_index :grants, :grantable_type
    add_index :grants, [:grantable_id, :grantable_type], unique: true
  end
end
