class Ghostbuster

  attr_reader :name, :ride

  def initialize(name)
    @name = name
    @ride = "I'm riding"
  end

  def say_my_name
    puts "I'm #{name}"
  end

  def get_car(car)
    @car = car
  end


end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride
