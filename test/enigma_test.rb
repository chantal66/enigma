require './test/test_helper'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/enigma'
require 'date'
require 'pry'

class EnigmaTest < Minitest::Test
   def test_it_can_encrypt_a_word_w_random_key
    e = Enigma.new
    result = e.encrypt_w_rotations("hello", 12345)

    assert_equal "ielmp", result
  end

   def test_it_can_encrypt_a_phrase_w_random_key
    e = Enigma.new
    result = e.encrypt_w_rotations("hello world", 12345)
    
    assert_equal "ielmp wpsld", result
  end

  
  def test_it_can_encrypt_w_array
    e = Enigma.new
    result = e.encrypt_w_rotations("hello", [41, 15, 52, 21])
    
    assert_equal "jty6q", result
  end

   def test_it_can_encrypt_a_phrase_w_array
    e = Enigma.new
    result = e.encrypt_w_rotations("hello world", [41, 15, 52, 21])
    
    assert_equal "jty6qm99t0q", result
  end

  def test_it_can_decrypt_a_word
    e = Enigma.new
    result = e.decrypt("jty6q", [41, 15, 52, 21])

    assert_equal "hello", result
  end

    def test_it_can_decrypt_a_phrase
    e = Enigma.new
    result = e.decrypt("jty6qm99t0q", [41, 15, 52, 21])

    assert_equal "hello world", result
  end

  def test_it_can_decrypt_a_word_w_number
    e = Enigma.new
    result = e.decrypt("jty6q", 12345)

    assert_equal "ity5p", result
  end
end

