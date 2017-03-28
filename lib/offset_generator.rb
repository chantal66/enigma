require 'date'
require 'pry'
class OffsetGenerator
  attr_reader :key

  def date
    Date.today.strftime('%d%m%y')
  end

  def date_to_integer
    date.to_i
  end

  def offset_generator
    result = []
    num = date_to_integer ** 2
    last_four = num.to_s[-4..-1]
    last_four.each_char do |character| 
      result << character.to_i
    end
    result
  end  
end
