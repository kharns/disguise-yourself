require "test_helper"

class Owner::CostumesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_costumes_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_costumes_create_url
    assert_response :success
  end
end
