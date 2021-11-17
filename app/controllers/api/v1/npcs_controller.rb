class Api::V1::NpcsController < ApplicationController

  before_action :set_occupation

  def index
    @npcs = @occupation.npcs
    render json: @npcs
  end

  def show
    @npc = Npc.find(params[:id])
    render json: @npc
  end

  def create
    @npc = @occupation.npcs.new(npc_params)
    if @npc.save
      render json: @occupation
    else
      render json: {error: 'Error creating occupation.'}
    end
  end

  def destroy
    @npc = Npc.find(params["id"])
    @npc.destroy
  end

  private

  def set_occupation
    @occupation = Occupation.find(params[:occupation_id])
  end

  def npc_params
    params.require(:npc).permit(
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
