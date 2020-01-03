class Centaur

  attr_reader :name, :breed, :rested, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @rested = false
    @sick = false
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def shoot
    if @cranky || !@standing
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    if @cranky || !@standing
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def ran_or_shot_three_times
    if 3.times {self.shoot} || 3.times{self.run}
      @cranky = true
    elsif 3.times {self.shoot || self.run}
      @cranky = true
    end
  end

  def sleep
    @cranky = false
    if @standing
      "NO!"
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if @rested
      @sick = true
    elsif @standing
      @rested = true
    end
  end
end
