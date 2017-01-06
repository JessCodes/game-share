class WelcomeController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end
end
