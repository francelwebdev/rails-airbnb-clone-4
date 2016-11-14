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

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :category, presence: true
  # validates :available, presence: true
  # validates :price, presence: true
  # validates :user, presence: true
end
