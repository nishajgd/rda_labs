require 'rails_helper'

describe 'GET /' do
  let!(:users) { FactoryGirl.create_list(:user, 2) }

  before { get '/'}
  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns all users' do
    expect(response['data'].size).to eq(2)
  end
end
