class AddBookingDatesToCups < ActiveRecord::Migration[7.1]
  def change
    add_column :cups, :start_date, :date
    add_column :cups, :end_date, :date
  end
end
