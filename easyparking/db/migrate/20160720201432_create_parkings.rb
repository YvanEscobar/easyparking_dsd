class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.references :parking_type, foreign_key: true
      t.text :address
      t.references :district, foreign_key: true
      t.decimal :price_per_hour
      t.date :start_date
      t.date :end_date
      t.boolean :published

      t.timestamps
    end
  end
end
