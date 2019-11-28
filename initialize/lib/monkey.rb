class Monkey

  attr_reader :name, :type, :favorite_food

  def initialize(monkey_attr_array)
    @name = monkey_attr_array[0]
    @type = monkey_attr_array[1]
    @favorite_food = monkey_attr_array[2]
  end
end
