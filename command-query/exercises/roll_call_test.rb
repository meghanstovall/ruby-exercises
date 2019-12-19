gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'roll_call'

class RollCallTest < Minitest::Test

  def test_it_exists
    roll_call = RollCall.new

    assert_instance_of RollCall, roll_call
  end

  def test_no_names
    roll_call = RollCall.new

    assert_equal nil, roll_call.longest_name
  end

  def test_longest_of_one
    roll_call = RollCall.new
    roll_call.names << "Oda"

    assert_equal "Oda", roll_call.longest_name
  end

  def test_longest_of_several
    roll_call = RollCall.new
    roll_call.names << "Ann"
    roll_call.names << "Alexandra"
    roll_call.names << "Roger"
    
    assert_equal "Alexandra", roll_call.longest_name
  end
end
