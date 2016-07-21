# == Schema Information
#
# Table name: parking_features
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ParkingFeature < ApplicationRecord
end
