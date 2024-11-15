# frozen_string_literal: true

FactoryBot.define do
  factory :route do
    name { 'Tour de Pologne' }
    distance { 42.125 }
    difficulty { 1 }
    route_type { 'mountain' }
  end
end
