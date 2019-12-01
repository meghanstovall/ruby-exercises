class Bag

  attr_reader :empty, :count, :candies

  def initialize
    @count = 0
    @empty = true
    @candies = []
  end

  def empty?
    if @candies.length != 0
      @empty = false
    end
    @empty
  end

  def count
    @count = @candies.length
  end

  def contains?(candy)
    if @candies.include?(candy)
      return true
    else
      return false
    end
  end
end
