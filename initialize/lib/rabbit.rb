class Rabbit

  attr_reader :name, :num_syllables

  def initialize(args)
    @name = args[:name]
    @num_syllables = args[:num_syllables]
    if @num_syllables == 2
      @name = "#{@name} Rabbit"
    end
  end
end
