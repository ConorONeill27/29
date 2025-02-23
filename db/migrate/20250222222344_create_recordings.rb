class CreateRecordings < ActiveRecord::Migration[8.0]
  def change
    create_table :recordings do |t|
      t.timestamps
    end
  end
end
