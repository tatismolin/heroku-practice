class SnowflakesController < ApplicationController
  before_action :set_snowflake, only: [:show, :update, :destroy]

  # GET /snowflakes
  def index
    @snowflakes = Snowflake.all

    render json: @snowflakes
  end

  # GET /snowflakes/1
  def show
    render json: @snowflake
  end

  # POST /snowflakes
  def create
    @snowflake = Snowflake.new(snowflake_params)

    if @snowflake.save
      render json: @snowflake, status: :created, location: @snowflake
    else
      render json: @snowflake.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snowflakes/1
  def update
    if @snowflake.update(snowflake_params)
      render json: @snowflake
    else
      render json: @snowflake.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snowflakes/1
  def destroy
    @snowflake.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snowflake
      @snowflake = Snowflake.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snowflake_params
      params.require(:snowflake).permit(:shape)
    end
end
