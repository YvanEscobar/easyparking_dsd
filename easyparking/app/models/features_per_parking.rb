# == Schema Information
#
# Table name: features_per_parkings
#
#  id                 :integer          not null, primary key
#  parking_id         :integer
#  parking_feature_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_features_per_parkings_on_parking_feature_id  (parking_feature_id)
#  index_features_per_parkings_on_parking_id          (parking_id)
#
# Foreign Keys
#
#  fk_rails_2e05de11da  (parking_id => parkings.id)
#  fk_rails_ed206f6dbc  (parking_feature_id => parking_features.id)
#

class FeaturesPerParking < ApplicationRecord
  belongs_to :parking
  belongs_to :parking_feature
end
