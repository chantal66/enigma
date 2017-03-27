require './lib/cipher'
require './lib/key_generator'
require './lib/offset_generator'
require 'pry'

class Enigma
  
  attr_reader :message, :key, :date , :generate_key, :ciphers, :ciphers_inverse

  def encrypt(input_message, input_key=generate_key, input_date = Date.today)
    message = input_message
    @key = input_key
    @date = input_date
    @ciphers = get_offsets
    characters = prepare_message(message)
    encrypted = []
    characters.each_with_index do |letter, index|
      if (index + 1) % 4 == 1
        encrypted << ciphers['A'][letter]
      elsif (index + 1) % 4 == 2
        encrypted << ciphers['B'][letter]
      elsif (index + 1) % 4 == 3
        encrypted << ciphers['C'][letter]
      else (index + 1) % 4 == 4
        encrypted << ciphers['D'][letter]
      end
    end
    encrypted.join
  end
end
