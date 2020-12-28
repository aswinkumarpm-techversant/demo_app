require 'test_helper'

class LogoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logo_index_url
    assert_response :success
  end

end
