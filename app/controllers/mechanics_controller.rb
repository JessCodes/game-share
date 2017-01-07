class MechanicsController < ApplicationController

  def show
    super
    @mechanic = Mechanic.find(params[:id])
    @games = @mechanic.games
  end
end