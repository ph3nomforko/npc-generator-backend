class Api::V1::NpcsController < ApplicationController

  before_action :set_occupation
  before_action :set_npc, only: [:show, :destroy]

  def index
    @npcs = @occupation.npcs
    render json: @npcs
  end

  def show
    render json: @npc
  end

  def create
    @npc = @occupation.npcs.new(npc_params)
    if @npc.save
      render json: @npc
    else
      render json: {error: 'Error creating occupation.'}
    end
  end

  def destroy
    @npc.destroy
  end

  private

  def set_occupation
    @occupation = Occupation.find(params[:occupation_id])
  end

  def set_npc
    @npc = Npc.find(params[:id])
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
