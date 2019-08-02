class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable
  has_many :hotel_admins, dependent: :destroy
  has_many :hotels, through: :hotel_admins
  scope :ordered_by_name, ->{order :name}
  enum role: %i(user adminHotel admin)
end
