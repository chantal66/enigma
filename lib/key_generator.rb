
class KeyGenerator
  
  def key_maker
    result = []
    5.times do 
      result << rand(0..9)
    end  
    result.join
  end
end
