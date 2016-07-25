class AddSpacesToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :spaces, :integer, :after => :parking_id
  end
end
