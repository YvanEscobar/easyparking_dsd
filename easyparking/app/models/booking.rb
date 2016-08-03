# == Schema Information
#
# Table name: bookings
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  parking_id        :integer
#  spaces            :integer
#  start_date        :datetime
#  end_date          :datetime
#  payment_method_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_bookings_on_parking_id         (parking_id)
#  index_bookings_on_payment_method_id  (payment_method_id)
#  index_bookings_on_user_id            (user_id)
#
# Foreign Keys
#
#  fk_rails_90dda31db4  (parking_id => parkings.id)
#  fk_rails_ef0571f117  (user_id => users.id)
#  fk_rails_f65e591682  (payment_method_id => payment_methods.id)
#

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :parking
  belongs_to :payment_method
end
