class Api::V1::OccupationsController < ApplicationController

  def index
    @occupations = Occupation.all
    render json: @occupations
  end

  def create
    @occupation = Occupation.new(occupation_params)
    if @occupation.save
      render json: @occupation
    else
      render json: {error: 'Error creating occupation.'}
    end
  end

  def show
    @occupation = Occupation.find(params[:id])
    render json: @occupation
  end

  private

  def occupation_params
    params.require(:occupation).permit(:name)
  end

end
