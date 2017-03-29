require './test/test_helper'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/rotator'
require 'pry'

class RotatorTest < Minitest::Test
  def test_does_rotator_exist
    rotator = Rotator.new 
    
    assert_instance_of Rotator, rotator
  end

  def test_is_the_return_an_array
    rotator = Rotator.new
    
    result = rotator.generate_key
    
    assert result.is_a? Array
  end

  def test_if_keys_are_different_from_eachother
    rotator_1 = Rotator.new.generate_key
    rotator_2 = Rotator.new.generate_key

    assert_equal false, rotator_1 == rotator_2
  end

  def test_if_offset_calculator_are_different_from_eachother
    offset_generator_1 = Rotator.new.offset_calculator
    offset_generator_2 = Rotator.new.offset_calculator 

    assert_equal false, offset_generator_1 == offset_generator_2
  end

  def test_rotator_returns_a_totalize_offset
    rotator = Rotator.new('020315')
   
    assert_equal [2,24,11,40], rotator.offset_calculator
  end

  def test_rotator_returns_a_totalize_offset
    rotator = Rotator.new('12345')
    new_key = rotator.generate_key
  
    assert_equal [12, 23, 34, 45], new_key
  end

end      