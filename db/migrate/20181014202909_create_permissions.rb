class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :resource
      t.string :action

      t.timestamps
    end

    add_index :permissions, :resource
    add_index :permissions, [:resource, :action], unique: true
  end
end
