
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

  def encrypt(message, key = nil, date=Date.new, letters = mapping_chars)
    characters = message.chars
    @the_key = key || @key.key_generator
    @offset = OffsetGenerator.new(@the_key, date)
    @encrypted_message = []

    characters.each_with_index do |char, index|
      if index % 4 == 0
        offset = @offset.first_offset
      elsif index % 4 == 1
        offset = @offset.second_offset
      elsif index % 4 == 2
        offset = @offset.third_offset
      elsif index % 4 == 3
        offset = @offset.fourth_offset
      end

      if chars.include?(char)
        @rotated_character = letters.rotate(letters.index(char) + offset).first
        @encrypted_message << @rotated_character
      else
        @encrypted_message << char
      end
    end
    return @encrypted_message.join
  end
end
