class AddNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_reference :users, :district, foreign_key: true
    add_column :users, :phone, :string
  end
end
