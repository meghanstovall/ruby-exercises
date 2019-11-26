class Direwolf

  attr_reader :name, :home, :size

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
  end
end
