class WelcomeController < ApplicationController
  def index
    super
    @games = Game.order('id DESC').first(25)
  end
end
