require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_generator'
require 'pry'

class OffsetGeneratorTest < Minitest::Test
   def test_offset_exist
    offset = OffsetGenerator.new

    assert_instance_of OffsetGenerator, offset
  end  
  
  def test_offset_has_six_numbers_needed
    offset = OffsetGenerator.new
    result = offset.offset_generator
    
    assert_equal 4, result.length
  end 
  # 2 offset are not equal 
  #   
end
