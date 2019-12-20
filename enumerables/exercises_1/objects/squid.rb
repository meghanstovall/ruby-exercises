class Squid

  attr_reader :size

  def initialize(size)
    @size = size
  end

  def giant?
    @size == 'giant'
  end
end
