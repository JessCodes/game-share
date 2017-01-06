class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @mechanics = Mechanic.all
  end

  def new
    @mechanics = Mechanic.all
  end

  def show
    @mechanics = Mechanic.all
  end

  def edit
    @mechanics = Mechanic.all
  end
end
