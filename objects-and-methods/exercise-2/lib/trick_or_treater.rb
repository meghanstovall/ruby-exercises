class TrickOrTreater

  attr_reader :dressed_up_as, :bag, :sugar_level

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
    @sugar_level = 0
  end

  def has_candy?
    if @bag.empty?
      false
    else
      true
    end
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    candy = @bag.candies.shift
    @sugar_level += candy.sugar
  end
end
