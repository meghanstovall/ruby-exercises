require 'minitest/autorun'
require 'minitest/pride'

class IntsAndFloatsTests < Minitest::Test
  def test_1
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    assert_equal 20, lucky + unlucky
  end

  def test_2
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    assert_equal -6, lucky - unlucky
  end

  def test_3
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    assert_equal 1, unlucky / lucky
  end

  def test_4
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    assert_equal 1.8571428571428572, unlucky.to_f / lucky.to_f
  end

  def test_5
    lucky = 7
    unlucky = 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    assert_equal 6, unlucky % lucky
  end

  def test_6
    lucky = 7
    # Using the variable defined above,
    # find out if the lucky number is even
    assert_equal false, lucky.even?
  end

  def test_7
    pi = 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    assert_equal 3, pi.to_i
  end

  def test_8
    pi = 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    assert_equal 3.1, pi.round(1)
  end

  def test_9
    pi = 3.14
    # Using the variable defined above,
    # round the number to the next highest whole number
    assert_equal 4, pi.ceil
  end
end
