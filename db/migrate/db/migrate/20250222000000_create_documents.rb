class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :filename
      t.text :content

      t.timestamps
    end
  end
end
