# == Schema Information
#
# Table name: rentals
#
#  id           :integer          not null, primary key
#  start_date   :datetime
#  end_date     :datetime
#  equipment_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rental < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
  has_many :reviews

  validates :user, presence: true
  validates :equipment, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
