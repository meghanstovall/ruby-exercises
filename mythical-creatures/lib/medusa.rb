require_relative '../lib/person'

class Medusa

  attr_reader :name, :statues

  def initialize(name_parameter)
    @name = name_parameter
    @statues = []
  end

  def stare(person)
    if @statues.count < 3
      @statues << person
      person.stoned = true
    else
      @statues.shift
      @statues << person
    end
  end
end
