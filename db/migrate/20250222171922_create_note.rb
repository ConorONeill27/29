class CreateNote < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.references :notebook, foreign_key: true
      t.timestamps
    end
  end
end
