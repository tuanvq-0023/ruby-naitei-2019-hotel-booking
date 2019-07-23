class ChangeUsersField < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :admin, :integer, null: false, default: 0
    rename_column :users, :admin, :role
  end
end
