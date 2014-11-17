class RemoveGenderFromPatients < ActiveRecord::Migration
  def up
    remove_column :patients, :gender, :string
  end
  def down
    add_column :patients, :gender, :string, null: false, limit: 10, after: :last_name
  end
end
