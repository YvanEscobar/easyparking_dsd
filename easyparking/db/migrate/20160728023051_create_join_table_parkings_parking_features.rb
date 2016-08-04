class CreateJoinTableParkingsParkingFeatures < ActiveRecord::Migration[5.0]
  def change
    create_join_table :parkings, :parking_features do |t|
      # t.index [:parking_id, :parking_feature_id]
      # t.index [:parking_feature_id, :parking_id]
    end
  end
end
