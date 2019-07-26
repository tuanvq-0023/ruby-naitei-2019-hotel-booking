class AddPermissionsToHotelAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :hotel_admins, :permissions, :integer
  end
end
