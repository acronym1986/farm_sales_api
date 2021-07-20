require "test_helper"

class FarmTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm_task = farm_tasks(:one)
  end

  test "should get index" do
    get farm_tasks_url, as: :json
    assert_response :success
  end

  test "should create farm_task" do
    assert_difference('FarmTask.count') do
      post farm_tasks_url, params: { farm_task: { location: @farm_task.location, pick_quantity: @farm_task.pick_quantity, plant_quantity: @farm_task.plant_quantity, task_date: @farm_task.task_date } }, as: :json
    end

    assert_response 201
  end

  test "should show farm_task" do
    get farm_task_url(@farm_task), as: :json
    assert_response :success
  end

  test "should update farm_task" do
    patch farm_task_url(@farm_task), params: { farm_task: { location: @farm_task.location, pick_quantity: @farm_task.pick_quantity, plant_quantity: @farm_task.plant_quantity, task_date: @farm_task.task_date } }, as: :json
    assert_response 200
  end

  test "should destroy farm_task" do
    assert_difference('FarmTask.count', -1) do
      delete farm_task_url(@farm_task), as: :json
    end

    assert_response 204
  end
end
