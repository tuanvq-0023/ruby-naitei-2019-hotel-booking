class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable

  has_many :hotel_admins, dependent: :destroy
  has_many :hotels, through: :hotel_admins

  after_create :assign_default_role
  scope :ordered_by_name, ->{order :name}

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
