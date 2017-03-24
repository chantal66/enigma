require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require 'pry'
class KeyGeneratorTest < Minitest::Test
  def test_does_key_exist
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end
end