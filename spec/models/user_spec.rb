require 'rails_helper'

RSpec.describe User, type: :model do

  context "validate user attributes" do
    it { is_expected.to validate_presence_of(:random_username) }
    it { is_expected.to validate_presence_of(:remote_ip) }
  end

  it 'has a valid user' do
   expect(FactoryGirl.create(:user)).to be_valid
  end
end
