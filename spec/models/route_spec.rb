require 'rails_helper'

RSpec.describe Route, type: :model do
  subject { create(:route) }
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:distance) }
    it { is_expected.to validate_presence_of(:difficulty) }
    it { is_expected.to validate_presence_of(:route_type) }
    it do
      expect(subject).to validate_inclusion_of(:route_type).in_array(Route::ROUTE_TYPES)
    end
  end
end

