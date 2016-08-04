class CreateFeaturesPerParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :features_per_parkings do |t|
      t.references :parking, foreign_key: true
      t.references :parking_feature, foreign_key: true

      t.timestamps
    end
  end
end
