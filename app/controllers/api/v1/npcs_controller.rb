class Api::V1::NpcsController < ApplicationController

  before_action :set_occupation

  def index
    @npcs = @occupation.npcs
    render json: @npcs
  end

  def create
    @npc = Npc.new(npc_params)
    if @npc.save
      render json: @npc
    else
      render json: {error: 'Error creating occupation.'}
    end
  end

  def show
    @npc = Npc.find(params[:id])
    render json: @npc
  end

  private

  def set_occupation
    @occupation = Occupation.find(params[:occupation_id])
  end

  def npc_params
    params.require(:occupation).permit(
      :name,
      :species,
      :alignment,
      :behavior,
      :strong_ability,
      :weak_ability,
      :plot_key,
      :occupation_id
    )
  end
end
