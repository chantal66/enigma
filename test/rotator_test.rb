require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offset_generator'
require 'pry'

class RotatorTest < Minitest::Test
  def test_does_rotator_exist
   rotator = Rotator.new 

   assert_instance_of Rotator, rotator

  end
  
end