
require './lib/key_generator'
require './lib/offset_generator'
require 'date'
require 'pry'

class Enigma
  attr_accessor :key, :offset

  def initialize
    @key = Key.new
  end

  def mapping_chars
    ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.', ',']
  end

  def encrypt(message, rotations)
    characters = message.chars
    encrypted_message = ''
      characters.each_slice(4) do |letter|0 
        
      letters.each_with_index do |letter, index|

        if characters.include?(letter)
          rotated_character = characters.rotate(characters.index(letter) + offset).first
          encrypted_message << rotated_character
        else
          encrypted_message << char  # when the extension comes just take it out
        end
      end 
    return encrypted_message
  end
end



