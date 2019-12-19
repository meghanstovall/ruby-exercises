class Wallet

  attr_reader :cents, :hash

  def initialize
    @hash = {}
  end

  def cents
    @hash.values.sum
  end

  def take(money)
    @hash.each do |key_value|
      if key_value.first == money
        count = key_value.last
        cent = key_value.first
        if cent == :penny
          @hash[money] = count -= 1
        elsif cent == :dime
          @hash[money] = count -= 10
        elsif cent == :quarter
          @hash[money] = count -= 25
        elsif cent == :dollar
          @hash[money] = count -= 100
        end
      end
    end
  end
end
