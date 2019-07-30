class Hotel < ApplicationRecord
  has_many :hotel_admins, dependent: :destroy
  has_many :users, through: :hotel_admins
  has_many :hotel_images, dependent: :destroy
  has_many :images, through: :hotel_images
  has_many :rooms, dependent: :destroy
  accepts_nested_attributes_for :hotel_admins, allow_destroy: true
  accepts_nested_attributes_for :hotel_images, allow_destroy: true
  accepts_nested_attributes_for :images, allow_destroy: true
end
