require_relative '../lib/ogre'

class Human

  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    ogre = Ogre.new('Brak')
    if @encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?
    if @encounter_counter % 2 == 0
      @knocked_out = true
    end
  end
end
