# == Schema Information
#
# Table name: parking_schedules
#
#  id          :integer          not null, primary key
#  parking_id  :integer
#  day_of_week :integer
#  start_time  :time
#  end_time    :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_parking_schedules_on_parking_id  (parking_id)
#
# Foreign Keys
#
#  fk_rails_0966da6a68  (parking_id => parkings.id)
#

class ParkingSchedule < ApplicationRecord
  belongs_to :parking
end
