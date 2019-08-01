class Hotel < ApplicationRecord
  resourcify
  has_many :hotel_admins, dependent: :destroy
  has_many :users, through: :hotel_admins
  accepts_nested_attributes_for :hotel_admins
end
