class Bag

  attr_reader :empty, :candies

  def initialize()
    @candies = []
    @empty = true
  end

  def empty?
    if @candies.count == 0
      @empty = true
    else
      @empty = false
    end
  end

  def count
    @candies.count
  end

  def contains?(candy_type)
    @candies.each do |candy|
      if candy.type == candy_type
        return true
      else
        return false
      end
    end
  end

  def grab(candy_type)
    @candies.each do |candy|
      if candy.type == candy_type
        @candies.delete(candy)
        return candy
      end
    end
  end

  def take(number_of_candy_to_take)
    taken = []
    count = 1
    until count > number_of_candy_to_take
      taken << @candies.shift
      count += 1
    end
    taken
  end

end
