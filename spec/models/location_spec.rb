require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:country) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:zip) }
  end
end
