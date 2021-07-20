class FarmTasksController < ApplicationController
  before_action :set_farm_task, only: [:show, :update, :destroy]

  # GET /farm_tasks
  def index
    @farm_tasks = FarmTask.all

    render json: @farm_tasks
  end

  # GET /farm_tasks/1
  def show
    render json: @farm_task
  end

  # POST /farm_tasks
  def create
    @farm_task = FarmTask.new(farm_task_params)

    if @farm_task.save
      render json: @farm_task, status: :created, location: @farm_task
    else
      render json: @farm_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farm_tasks/1
  def update
    if @farm_task.update(farm_task_params)
      render json: @farm_task
    else
      render json: @farm_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /farm_tasks/1
  def destroy
    @farm_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_task
      @farm_task = FarmTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farm_task_params
      params.require(:farm_task).permit(:pick_quantity, :plant_quantity, :location, :task_date)
    end
end
