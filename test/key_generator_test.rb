require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require 'pry'

class KeyGeneratorTest < Minitest::Test
  def test_does_key_exist
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end
  
  def test_has_the_five_numbers_we_need
    key = KeyGenerator.new
    result = key.key_maker.length
    
    assert_equal 5 , result
  end

  def test_keys_are_not_the_same
    key = KeyGenerator.new
    key_1 = key.key_maker
    key_2 = key.key_maker
    result = (key_1 == key_2)
    
    refute false , result
  end

  def test_it_defaults_to_array_of_numbers
    key = KeyGenerator.new
    result = key.key_maker

    assert result.is_a? String
  end
end