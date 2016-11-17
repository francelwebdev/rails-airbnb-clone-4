# == Schema Information
#
# Table name: equipment
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  category    :string
#  available   :boolean
#  price       :decimal(, )
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Equipment < ApplicationRecord

  belongs_to :user
  has_many :users, through: :rentals

  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  # validates :category, presence: true
  # validates :available, presence: true
  # validates :price, presence: true
  # validates :user, presence: true
end
