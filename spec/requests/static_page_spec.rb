require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  it 'renders the home page' do
    get root_path
    expect(response).to be_successful
  end
end
