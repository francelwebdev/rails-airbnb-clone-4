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
  validates :price, presence: true
  # validates :user, presence: true

  def self.search(params)
    results = available.with_title(params[:title])
    results = results.with_address(params[:address])

    results
  end

  def self.available
    where(available: true)
  end

  def self.with_title(title)
    title.present? ? where("title ILIKE ?", "%#{title}%") : all
  end

  def self.with_address(address)
    address.present? ? where("address ILIKE ?", "%#{address}%") : all
  end
end
