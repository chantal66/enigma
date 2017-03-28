require './lib/key_generator'
require './lib/offset_generator'
require 'pry'

class Rotator
  
  def initialize(key = KeyGenerator.new.key_maker)
    @key = key
  end

  def offset_calculator
    offset = OffsetGenerator.new.offset_generator
    key = generate_key 
    result = offset.map.with_index do |num, idx|
      num + key[idx]  
    end
    result
  end

  def generate_key
    result = []
    @key.split('').each_cons(2) do |pair|
      result << pair.join.to_i 
    end  
    result
  end
end

