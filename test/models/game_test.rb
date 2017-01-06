require 'test_helper'

class GameTest < ActiveSupport::TestCase
  def setup
    @game = Game.new(name:"Monopoly")
  end

  test "should be valid" do
    assert @game.valid?
  end
end