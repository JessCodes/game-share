class WelcomeController < ApplicationController
  def index
    super
    @games = Game.limit(25).order(id: :desc)
  end
end
