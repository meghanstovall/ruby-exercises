class Lion

  attr_reader :name, :sound

  def initialize(args)
    @name = args[:name]
    @sound = args[:sound]
  end

end
