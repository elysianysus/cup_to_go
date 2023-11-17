class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cup

  validates :start_date, presence: true
  validates :return_date, presence: true

  validate :start_date_in_future, :dates_has_positive_length

  def pending?
    status == "pending"
  end

  private

  def start_date_in_future
    return if start_date.blank?
    return if start_date >= Date.current
    errors.add(:start_date, "can't be in past")
  end

  def dates_has_positive_length
    return if return_date.blank? || start_date.blank?
    return if return_date >= start_date
    errors.add(:return_date, 'start date should be less than end date')
  end
end
