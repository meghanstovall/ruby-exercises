class Candy

  attr_reader :type, :sugar

  def initialize(type_of_candy, sugar = 100)
    @type = type_of_candy
    @sugar = sugar
  end
end
