class Cup < ApplicationRecord

  belongs_to :user

  has_many  :bookings

  validates :name, presence: true, length: { minimum: 6 }
  validates :description, presence: true, length: { minimum: 25 }

  validates :location, presence: true

  validates :price, presence: true, numericality: { only_integer: true }

  validates :volume, presence: true, numericality: { only_integer: true }

  validates :type, presence: true, inclusion: ["bottle","cup", "thermos","mug"]

end
