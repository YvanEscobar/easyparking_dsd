# == Schema Information
#
# Table name: parkings
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  name               :string(255)
#  description        :text(65535)
#  parking_type_id    :integer
#  address            :text(65535)
#  district_id        :integer
#  price_per_hour     :decimal(10, )
#  start_date         :date
#  end_date           :date
#  published          :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#
# Indexes
#
#  index_parkings_on_district_id      (district_id)
#  index_parkings_on_parking_type_id  (parking_type_id)
#  index_parkings_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_89c657275d  (user_id => users.id)
#  fk_rails_9d04a1c873  (parking_type_id => parking_types.id)
#  fk_rails_c523c1239a  (district_id => districts.id)
#

class Parking < ApplicationRecord
  belongs_to :user
  belongs_to :parking_type
  belongs_to :district
  
  has_attached_file :photo, styles: { medium: "365x260>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
