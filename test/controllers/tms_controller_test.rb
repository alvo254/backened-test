require "test_helper"

class TmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tm = tms(:one)
  end

  test "should get index" do
    get tms_url
    assert_response :success
  end

  test "should get new" do
    get new_tm_url
    assert_response :success
  end

  test "should create tm" do
    assert_difference("Tm.count") do
      post tms_url, params: { tm: { course: @tm.course, email: @tm.email, first_name: @tm.first_name, last_name: @tm.last_name } }
    end

    assert_redirected_to tm_url(Tm.last)
  end

  test "should show tm" do
    get tm_url(@tm)
    assert_response :success
  end

  test "should get edit" do
    get edit_tm_url(@tm)
    assert_response :success
  end

  test "should update tm" do
    patch tm_url(@tm), params: { tm: { course: @tm.course, email: @tm.email, first_name: @tm.first_name, last_name: @tm.last_name } }
    assert_redirected_to tm_url(@tm)
  end

  test "should destroy tm" do
    assert_difference("Tm.count", -1) do
      delete tm_url(@tm)
    end

    assert_redirected_to tms_url
  end
end
