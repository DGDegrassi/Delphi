class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  validates :name, :address, :description, presence: true
  validates :description, length: { minimum: 3}
  geocoded_by :address
  after_validation :geocode
end
