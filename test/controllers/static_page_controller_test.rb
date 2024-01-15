require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get static_page_home_url
    assert_response :success
  end
end
