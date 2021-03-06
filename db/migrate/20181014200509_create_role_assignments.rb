class CreateRoleAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :role_assignments do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end

    add_index :role_assignments, [:user_id, :role_id]
  end
end
