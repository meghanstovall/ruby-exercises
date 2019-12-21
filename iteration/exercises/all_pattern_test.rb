require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test
  def test_1
    account_balances = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    account_balances.each do |balance|
      all_zeros = false unless balance.zero?
    end
    assert_equal true, all_zeros
  end

  def test_2
    account_balances = {
      checking: 0,
      saving: 0,
      retirement_401k: 0,
      retirement_ira: 0,
    }
    all_zeros = true
    account_balances.each do |account, balance|
      if !balance.zero?
        all_zeros = false
      end
    end
    assert_equal true, all_zeros
  end

  def test_3
    words = ["love", "hate", "fire", "bird", "call"]
    all_four_letters = words.all? {|word| word.length == 4}
    assert_equal true, all_four_letters
  end

  def test_4
    skip
    words = {
      one: "love",
      two: "hate",
      three: "fire",
      four: "bird",
      five: "call"
    }
    all_four_letters = words.all? {|word| word.length == 4}
    end
    assert_equal true, all_four_letters
  end

  def test_5
    statuses = [:busy, :busy, :busy]
    all_busy = statuses.all? {|statue| statue == :busy}

    assert_equal true, all_busy
  end

  def test_6
    friend_status = {
      "Megan" => :busy,
      "Sarah" => :busy,
      "Duncan" => :busy,
    }
    all_busy = friend_status.all? {|status| status == :busy}

    assert_equal true, all_busy
  end

  def test_7
    zip_codes = [94381, 831, 50009, 36232, 8992, 89999, 11110]
    all_five_digits = zip_codes.all? {|zip_code| zip_code.length == 5}

    assert_equal false, all_five_digits
  end

  def test_8
    zip_codes = {
      "Megan" => 94381,
      "Sarah" => 831,
      "Duncan" => 50009,
      "Raymart" => 36232,
      "Alec" => 89092,
      "Cameron" => 89999,
      "Joshua" => 11110
    }
    all_five_digits = zip_codes.values.all? {|zip_code| zip_code.length == 5}

    assert_equal false, all_five_digits
  end

  def test_9
    snacks = ["GARLIC PLANTAINS", "SNICKERDOODLES", "Pretzels"]
    all_caps = snacks.all? {|snack| snack.upcase == snack}

    assert_equal false, all_caps
  end

  def test_10
    snacks = {
      savory: "GARLIC PLANTAINS",
      sweet: "SNICKERDOODLES",
      salty: "Pretzels"
    }
    all_caps = snacks.values.all? {|snack| snack == snack.upcase}

    assert_equal false, all_caps
  end
end
