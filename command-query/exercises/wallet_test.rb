gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'wallet'

class WalletTest < Minitest::Test

  def test_it_exists
    wallet = Wallet.new

    assert_instance_of Wallet, wallet
  end

  def test_wallet_starts_at_zero
    wallet = Wallet.new

    assert_equal 0, wallet.cents
  end

  def test_add_pennies
    wallet = Wallet.new
    wallet.hash[:penny] = 1

    assert_equal 1, wallet.cents
    3.times { wallet.hash[:penny] += 1 }
    assert_equal 4, wallet.cents
  end

  def test_add_nickels
    wallet = Wallet.new
    wallet.hash[:nickel] = 5

    assert_equal 5, wallet.cents
    3.times { wallet.hash[:nickel] += 5 }
    assert_equal 20, wallet.cents
  end

  def test_add_dimes
    wallet = Wallet.new
    wallet.hash[:dime] = 10

    assert_equal 10, wallet.cents
    3.times { wallet.hash[:dime] += 10 }
    assert_equal 40, wallet.cents
  end

  def test_add_quarters
    wallet = Wallet.new
    wallet.hash[:quarter] = 25

    assert_equal 25, wallet.cents
    3.times { wallet.hash[:quarter] += 25 }
    assert_equal 100, wallet.cents
  end

  def test_add_dollars
    wallet = Wallet.new
    wallet.hash[:dollar] = 100

    assert_equal 100, wallet.cents
    3.times { wallet.hash[:dollar] += 100 }
    assert_equal 400, wallet.cents
  end

  def test_take_coins_out
    wallet = Wallet.new
    wallet.hash[:penny] = 1
    wallet.hash[:penny] += 1
    wallet.hash[:penny] += 1
    wallet.hash[:penny] += 1

    wallet.take(:penny)
    assert_equal 3, wallet.cents
    2.times { wallet.take(:penny) }
    assert_equal 1, wallet.cents
  end

  def test_take_various_coins_out
    wallet = Wallet.new
    wallet.hash[:penny] = 1
    wallet.hash[:dime] = 10
    wallet.hash[:quarter] = 25
    wallet.hash[:quarter] += 25

    wallet.take(:dime)
    wallet.take(:quarter)
    assert_equal 26, wallet.cents
  end

  def test_ignore_coins_that_are_not_there
    wallet = Wallet.new
    wallet.hash[:penny] = 1
    wallet.take(:dime)
    
    assert_equal 1, wallet.cents
  end
end
