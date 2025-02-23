class CreateNotebooks < ActiveRecord::Migration[8.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.references :owner, foreign_key: { to_table: :users }
      t.references :organization, foreign_key: true, null: true
      t.timestamps
    end
  end
end
