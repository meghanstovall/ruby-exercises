class Parrot

  attr_reader :name, :known_words

  def initialize(args)
    @name = args[:name]
    @known_words = args[:known_words]
  end

  def sound
    "Squawk!"
  end
end
