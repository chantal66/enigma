require 'pry'
class KeyGenerator
  
  attr_accessor :key

  def initialize
    @key = key
  end

  def random_key_maker
    key = []
    5.times do 
      key << rand(0..100)
    end  
    key
    binding.pry
  end
end