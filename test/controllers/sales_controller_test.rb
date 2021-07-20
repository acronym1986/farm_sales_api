require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url, as: :json
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { annual_sale: @sale.annual_sale, leftover_quantity: @sale.leftover_quantity, sold_quantity: @sale.sold_quantity, stall_id: @sale.stall_id, week_sale: @sale.week_sale } }, as: :json
    end

    assert_response 201
  end

  test "should show sale" do
    get sale_url(@sale), as: :json
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { annual_sale: @sale.annual_sale, leftover_quantity: @sale.leftover_quantity, sold_quantity: @sale.sold_quantity, stall_id: @sale.stall_id, week_sale: @sale.week_sale } }, as: :json
    assert_response 200
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale), as: :json
    end

    assert_response 204
  end
end
