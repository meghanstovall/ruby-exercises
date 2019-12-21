gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindUsingMaxByTest < Minitest::Test

  def test_longest_word
    words = ["apple", "banana", "cherry", "date", "eggplant"]
    found_word = words.max_by do |word|
      word.length
    end

    assert_equal "eggplant", found_word
  end

  def test_shortest_word
    words = ["apple", "banana", "cherry", "date", "eggplant"]
    found_word = words.min_by do |word|
      word.length
    end

    assert_equal "date", found_word
  end

  def test_array_with_the_most_items
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]
    biggest_array = arrays.max_by {|array| array.length}

    assert_equal [1, 2, 3, 4, 5], biggest_array
  end

  def test_array_with_the_fewest_items
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]
    smallest_array = arrays.min_by {|array| array.length}

    assert_equal [:a, :b, :c], smallest_array
  end

  def test_biggest_number
    numbers = [1, 10, 100, 1000, 10000, 1000000]
    found = numbers.max_by {|number| number}

    assert_equal 1000000, found
  end

  def test_smallest_number
    numbers = [1, 10, 100, 1000, 10000, 1000000]
    found = numbers.min_by {|number| number}

    assert_equal 1, found
  end

  def test_most_programmers
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    most_programmers = programmers.max_by {|programmer| programmer.length}

    assert_equal :ruby, most_programmers.first
  end

  def test_fewest_programmers
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    fewest_programmers = programmers.min_by {|programmer| programmer}

    assert_equal :java, fewest_programmers.first
  end
end
