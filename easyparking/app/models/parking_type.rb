# == Schema Information
#
# Table name: parking_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ParkingType < ApplicationRecord
    has_many :parkings
end
