class CreateProjectTable < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :artist_id
      t.integer :engineer_id
      t.boolean :submitted
    end
  end
end
