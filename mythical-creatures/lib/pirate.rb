class Pirate

  attr_reader :name, :job, :cursed, :heinous_act_counter, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @heinous_act_counter = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_act_counter += 1
    if @heinous_act_counter >= 3
      @cursed = true
    end
  end

  def rob_ship
    @booty += 100
  end
end
