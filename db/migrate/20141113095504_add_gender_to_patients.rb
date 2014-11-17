class AddGenderToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :gender, :string, null: false, limit: 10, after: :last_name
  end
end
