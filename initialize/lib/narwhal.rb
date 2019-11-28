class Narwhal

  attr_reader :cute, :weight, :name

  def initialize(args)
    @cute = args[:cute]
    @weight = args[:weight]
    @name = args[:name]
  end

  def cute?
    @cute
  end
end
