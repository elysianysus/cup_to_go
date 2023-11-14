class Cup < ApplicationRecord

  belongs_to :user
  has_many  :bookings

  TYPE = ["bottle", "cup", "thermos", "mug"]

  validates :name, presence: true, length: { minimum: 6 }
  validates :type, presence: true, inclusion: TYPE
  validates :location, presence: true
  validates :volume, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { only_integer: true }
end
