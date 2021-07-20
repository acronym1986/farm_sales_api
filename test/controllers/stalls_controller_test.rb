require "test_helper"

class StallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stall = stalls(:one)
  end

  test "should get index" do
    get stalls_url, as: :json
    assert_response :success
  end

  test "should create stall" do
    assert_difference('Stall.count') do
      post stalls_url, params: { stall: { cost: @stall.cost, location: @stall.location, product_quantity: @stall.product_quantity, store_date: @stall.store_date, user_id: @stall.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stall" do
    get stall_url(@stall), as: :json
    assert_response :success
  end

  test "should update stall" do
    patch stall_url(@stall), params: { stall: { cost: @stall.cost, location: @stall.location, product_quantity: @stall.product_quantity, store_date: @stall.store_date, user_id: @stall.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy stall" do
    assert_difference('Stall.count', -1) do
      delete stall_url(@stall), as: :json
    end

    assert_response 204
  end
end
