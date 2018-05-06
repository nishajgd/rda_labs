require 'rails_helper'

RSpec.describe ColorGrid, type: :model do

  context "validate color grid attributes" do
    it { is_expected.to validate_presence_of(:color) }
  end
end
