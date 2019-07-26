class CreateHotelAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_admins do |t|
      t.belongs_to :hotel, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
