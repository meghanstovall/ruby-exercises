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
        return candy
      end
    end
  end

end
