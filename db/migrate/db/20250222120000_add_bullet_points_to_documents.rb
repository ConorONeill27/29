class AddBulletPointsToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :bullet_points, :text
  end
end
