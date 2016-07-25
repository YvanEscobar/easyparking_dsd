# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_districts_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_92c48f7cf2  (city_id => cities.id)
#

class District < ApplicationRecord
  belongs_to :city
  has_many :parkings
end
