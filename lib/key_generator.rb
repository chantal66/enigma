
class Key
  
  attr_accessor :key

  def initialize
    @key = key
  end

  def key_maker
    key = []
    5.times do 
      key << rand(0..9)
    end  
    key.join
  end
end