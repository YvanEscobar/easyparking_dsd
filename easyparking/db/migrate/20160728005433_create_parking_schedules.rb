class CreateParkingSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_schedules do |t|
      t.references :parking, foreign_key: true
      t.integer :day_of_week
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
