class CreateParkingFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_features do |t|
      t.string :name

      t.timestamps
    end
  end
end
