class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cups
  has_many :bookings
  has_many :bookings_as_owner, through: :cups, source: :bookings

  validates :phone_number, presence: true, length: { minimum: 7 }, format: { with: /\A\d+\z/, message: "Number only." }
end
