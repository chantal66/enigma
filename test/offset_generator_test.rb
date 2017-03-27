require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_generator'
require 'pry'

class OffsetGeneratorTest < Minitest::Test
   def test_offset_exist
    offset = OffsetGenerator.new

    assert_instance_of OffsetGenerator, offset
  end
  
  def test_if_format_is_correct
    offset = OffsetGenerator.new
    
    assert Date.today.strftime('%d%m$y')
  end

  def test_date_to_an_integer
    offset = OffsetGenerator.new
    result = offset.date_to_integer
  
    assert result #is this a proper way to assert?
  end
  
  def test_offset_has_four_numbers_needed
    offset = OffsetGenerator.new
    result = offset.offset_generator
    
    assert_equal 4, result.length

  end
end
