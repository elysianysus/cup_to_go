class Cup < ApplicationRecord
  scope :available_between, ->(start_date, end_date) {
    # Assuming your bookings table has columns named start_date and return_date
    joins(:bookings).where.not("bookings.start_date > ? OR bookings.return_date < ?", end_date, start_date)
  }

  belongs_to :user
  has_many  :bookings
  geocoded_by :location

  CATEGORY = ["bottle", "cup", "thermos", "mug"]

  validates :name, presence: true, length: { minimum: 6 }
  validates :category, presence: true, inclusion: CATEGORY
  validates :location, presence: true
  validates :volume, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { only_integer: true }
  after_validation :geocode, if: :will_save_change_to_location?

  has_one_attached :photo

end
