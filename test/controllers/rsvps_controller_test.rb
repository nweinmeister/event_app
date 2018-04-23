require 'test_helper'

class RsvpsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get rsvps_name:string_url
    assert_response :success
  end

  test "should get will_attend:boolean" do
    get rsvps_will_attend:boolean_url
    assert_response :success
  end

end
