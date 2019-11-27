class Wizard

  attr_reader :name, :bearded, :rested, :num_spells_casted

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @num_spells_casted = 0
  end

  def bearded?
    @bearded
  end

  def rested?
    @rested
  end

  def incantation(power)
    "sudo #{power}"
  end

  def cast
    @num_spells_casted += 1
    return "MAGIC MISSILE!"
    if @num_spells_casted > 2
      @rested = false
    end
  end
end
