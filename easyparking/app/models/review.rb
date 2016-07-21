# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  parking_id :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_parking_id  (parking_id)
#  index_reviews_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_74a66bd6c5  (user_id => users.id)
#  fk_rails_d491683b94  (parking_id => parkings.id)
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :parking
end
