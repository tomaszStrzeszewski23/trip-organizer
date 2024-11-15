class Location < ApplicationRecord
  validates :country, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
end
