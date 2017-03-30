
require './lib/key_generator'
require './lib/offset_generator'
require './lib/rotator'
require 'date'
require 'pry'

class Enigma

  def initialize
    @key = KeyGenerator.new
  end

  def mapping_chars
    ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.', ',']
  end
  
  def encrypt_w_rotations(string, rotations = Rotator.new.offset_calculator)
    letters = string.split("")
    results = []
    letters.each_slice(4) do |slice|    
      slice.each_with_index do |letter, index|
        message_index = mapping_chars.index(letter)
        rotator = rotations[index]
        results << mapping_chars.rotate(rotator)[message_index]
      end
    end  
    results.join
  end

  def decrypt(string, rotations = Rotator.new.offset_calculator)
    letters = string.split("")
    results = []
    letters.each_slice(4) do |slice|    
      slice.each_with_index do |letter, index|
        message_index = mapping_chars.index(letter)
        rotator = rotations[index] - (rotations[index] * 2)
        results << mapping_chars.rotate(rotator)[message_index]
      end
    end  
    results.join
  end
end








