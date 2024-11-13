FactoryBot.define do
  factory :route do
    name {'Tour de Pologne'}
    distance { 42.125 }
    difficulty { 1 }
    type { :street }
  end
end
