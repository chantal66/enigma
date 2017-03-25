require 'pry'

class Cipher
  
  attr_reader :rotation

  def initialize(rotation = 0)
    @rotation = rotation
  end

  def characters
    ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.', ',']
  end

  def characters_rotate
    characters.rotate(rotation)
  end

  def cipher
    Hash[characters.zip(characters_rotate)]
  end

 

end