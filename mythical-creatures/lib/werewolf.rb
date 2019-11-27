class Werewolf

  attr_reader :name, :location, :human, :wolf, :hungry, :consumed_victims

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @consumed_victims = []
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = false
    @wolf = true
    @hungry = true
  end

  def change_a_second_time
    @human = true
    @wolf = false
  end

  def can_I_consume_a_victim?
    if @human = true
      false
    else
      true
    end
  end

  def consumes_victim(victim)
    @hungry = false
    @consumed_victims << victim
    victim.status = "dead"
  end
end
