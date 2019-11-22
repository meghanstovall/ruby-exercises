class Person

  attr_reader :name
  attr_accessor :stoned

  def initialize(name_parameter)
    @name = name_parameter
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
