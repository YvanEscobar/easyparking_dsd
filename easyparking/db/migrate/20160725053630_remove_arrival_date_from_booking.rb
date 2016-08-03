class RemoveArrivalDateFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :arrival_date, :date
  end
end
