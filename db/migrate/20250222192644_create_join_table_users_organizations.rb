class CreateJoinTableUsersOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_join_table :users, :organizations do |t|
      # t.index [:user_id, :organization_id]
      # t.index [:organization_id, :user_id]
    end
  end
end
