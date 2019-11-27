class Ogre

  attr_reader :name, :home, :encountered_humans, :encounter_counter
  attr_accessor :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encountered_humans = []
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    @encountered_humans << human
    human.encounter_counter += 1
    self.swing_at(human)
  end

  def swing_at(human)
    if human.notices_ogre?
      @swings += 1
    elsif @encounter_counter % 3 == 0
      @swings += 1
    end
  end

  def apologize(human)
    human.knocked_out = false
  end

end
