require 'test_helper'

class MechanicTest < ActiveSupport::TestCase
  def setup
    @mechanic = Mechanic.new(name:"Dice Rolling")
  end

  test "should be valid" do
    assert @mechanic.valid?
  end
end