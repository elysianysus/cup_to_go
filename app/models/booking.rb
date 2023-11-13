class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cup

  validates :start_date, presence: true
  validates :return_date, presence: true
end
