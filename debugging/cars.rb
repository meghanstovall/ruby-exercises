class Car

  attr_reader :milage, :wheel_count
  attr_accessor :color

  def initialize
    @milage = 0
    @wheel_count = 4
    @color = ""
  end

  def horn
    puts "BEEEEP"
  end

  def drive(distance)
    @milage += distance
    puts "I'm driving #{distance} miles!"
  end

  def wheel_count
    "This ride is sitting on a sweet #{@wheel_count} wheels!"
  end

  def start
    if !@started
      puts "Starting Up!"
      @started = true
    else
      puts "Nope!"
    end

  end



end


my_car = Car.new
my_car.drive(6)
my_car.color = "purple"
my_car.start
