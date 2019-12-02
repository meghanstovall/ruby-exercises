class TrickOrTreater

  attr_reader :costume, :bag

  def initialize(costume)
    @costume = costume
    @bag = []
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    if @bag.empty?
      false
    else
      true
    end
  end

  def candy_count
    bag.count
  end

  def eat
    bag.shift
  end
end
