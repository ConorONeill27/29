class CreateOrganizationMemberships < ActiveRecord::Migration[8.0]
  def change
    create_table :organization_memberships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
     # Ensure a user can only be in an organization once
     add_index :organization_memberships, [:user_id, :organization_id], unique: true
  end
end
