class CreateNotebookMemberships < ActiveRecord::Migration[8.0]
  def change
    create_table :notebook_memberships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :notebook, null: false, foreign_key: true

      t.timestamps
    end
  end
end
