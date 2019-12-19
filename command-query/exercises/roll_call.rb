class RollCall

  attr_reader :names

  def initialize()
    @names = []
  end

  def longest_name
    length = 0
    long_name = nil
    @names.each do |name|
      if name.length > length
        length = name.length
        long_name = name
      end
    end
    long_name
  end
end
