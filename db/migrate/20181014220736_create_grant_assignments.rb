class CreateGrantAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :grant_assignments do |t|
      t.references :grant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
