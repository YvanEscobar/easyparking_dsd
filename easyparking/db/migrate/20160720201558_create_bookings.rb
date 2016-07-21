class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :parking, foreign_key: true
      t.date :arrival_date
      t.date :start_date
      t.date :end_date
      t.references :payment_method, foreign_key: true

      t.timestamps
    end
  end
end
