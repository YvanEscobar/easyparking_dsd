class AddSpacesToParking < ActiveRecord::Migration[5.0]
  def change
    add_column :parkings, :spaces, :integer, :after => :parking_type_id
  end
end
