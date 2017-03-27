require 'date'
require 'pry'
class OffsetGenerator
  
  def initialize
    @key = []
  end

  def date
    Date.today.strftime('%d%m%y')
  end

  def date_to_integer
    date.to_i
  end

  def offset_generator
    num = date_to_integer ** 2
    last_four = num.to_s[-4..-1]
    last_four.each_char.map do |character| 
      @key << character.to_i
      binding.pry
    end
  end  
      
  
  def key_a
    offset_generator.each_slice(4) {|a| a}
  end
end


OffsetGenerator.new.offset_generator