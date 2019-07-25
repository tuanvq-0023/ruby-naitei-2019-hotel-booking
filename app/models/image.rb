class Image < ApplicationRecord
  has_one :hotel, through: :hotel_image
  has_one :room, through: :room_image
  has_one :hotel_image, dependent: :destroy
  mount_uploader :picture, PictureUploader
end
