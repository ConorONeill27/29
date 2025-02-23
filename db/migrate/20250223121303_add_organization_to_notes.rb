class AddOrganizationToNotes < ActiveRecord::Migration[8.0]
  def change
    add_reference :notes, :organization, null: false, foreign_key: true
  end
end
