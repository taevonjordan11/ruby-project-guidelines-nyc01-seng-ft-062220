class AddReleasedateColumnToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :release_date, :string
  end
end
