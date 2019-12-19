class Adult

  attr_reader :sober

  def initialize
    @sober = true
    @beverages_count = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @beverages_count += 1
    if @beverages_count == 3
      @sober = false
    end
  end
end
