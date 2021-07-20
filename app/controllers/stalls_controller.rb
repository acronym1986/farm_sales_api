class StallsController < ApplicationController
  before_action :set_stall, only: [:show, :update, :destroy]

  # GET /stalls
  def index
    @stalls = Stall.all

    render json: @stalls
  end

  # GET /stalls/1
  def show
    render json: @stall
  end

  # POST /stalls
  def create
    @stall = Stall.new(stall_params)

    if @stall.save
      render json: @stall, status: :created, location: @stall
    else
      render json: @stall.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stalls/1
  def update
    if @stall.update(stall_params)
      render json: @stall
    else
      render json: @stall.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stalls/1
  def destroy
    @stall.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stall
      @stall = Stall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stall_params
      params.require(:stall).permit(:product_quantity, :location, :store_date, :cost, :user_id)
    end
end
