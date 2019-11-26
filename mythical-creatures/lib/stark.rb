class Stark

  attr_reader :name, :location
  attr_accessor :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def is_protected
    @safe = true
  end

  def is_not_protected
    @safe = false
  end

  def house_words
    if @safe
      "The North Remembers"
    else
      "Winter is Coming"
    end
  end
end
