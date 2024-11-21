require "test_helper"

class Owner::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get owner_bookings_accept_url
    assert_response :success
  end

  test "should get decline" do
    get owner_bookings_decline_url
    assert_response :success
  end
end
