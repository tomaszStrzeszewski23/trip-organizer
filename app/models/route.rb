class Route < ApplicationRecord
  # extend Memoist
  STATUSES =[
    :available,
    :unavailable,
    :available_soon
  ].freeze
  ROUTE_TYPES = [
    :mountain,
    :cross,
    :street
  ]

  validates :name, presence: true
  validates :distance, presence: true
  validates :difficulty, presence: true
  validates :type, inclusion: {in: ROUTE_TYPES}, presence: true


  belongs_to :city
end
