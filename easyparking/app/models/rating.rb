# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  parking_id :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_ratings_on_parking_id  (parking_id)
#  index_ratings_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_a7dfeb9f5f  (user_id => users.id)
#  fk_rails_b3aee9a8ed  (parking_id => parkings.id)
#

class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :parking
end
