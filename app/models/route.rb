class Route < ApplicationRecord
  # extend Memoist
  STATUSES =[
    :available,
    :unavailable,
    :available_soon
  ].freeze
  ROUTE_TYPES = %w[mountain cross street].freeze

  validates :name, presence: true
  validates :distance, presence: true
  validates :difficulty, presence: true
  validates :route_type, inclusion: {in: ROUTE_TYPES}, presence: true
end
