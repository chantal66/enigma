
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/enigma'
require 'date'
require 'pry'

class EnigmaTest < Minitest::Test
  def test_it_can_encrypt
    e = Enigma.new
    message = e.encrypt("hello", "12345", date=Date.today)
    binding.pry
    assert_equal "@%DP(", message
  end
end

