require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/cipher'
require './lib/encryptor'
require 'pry'


class EnigmaTest < Minitest::Test
  def test_encrypt_with_message_input
    e = Enigma.new
    e.encrypt('hello', '12345', Date.today)
    binding.pry
    assert_equal '12345', e.key
    assert_equal Date.today, e.date
  end
end
