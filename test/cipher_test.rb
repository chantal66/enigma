require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/cipher'
require 'pry'

class CipherTest < Minitest::Test
  def test_cipher_exist
    cipher = Cipher.new
    
    assert_instance_of Cipher, cipher
  end

  def test_can_accept_characters
    cipher = Cipher.new 
    result = cipher.characters
    
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], result 
  end

  def test_can_it_accept_a_rotation_value
    result = Cipher.new
  
    assert_equal true, result.respond_to?(:cipher)
  end

  def test_can_it_default_to_zero
    result = Cipher.new

    assert_equal 0, result.rotation
  end
  
  def test_can_it_take_a_rotation_value
    result = Cipher.new(30)

    assert_equal 30, result.rotation
  end

   def test_can_it_take_a_negative_rotation_value
    result = Cipher.new(-30)

    assert_equal -30, result.rotation
  end

  def test_returns_a_hash
    result = Cipher.new(20)

    assert result.cipher.is_a?Hash
  end
 
end
