
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
    message = e.encrypt("hello", [3,5,1,2] )
    binding.pry
    assert_equal "kjmnr", message
  end
end

