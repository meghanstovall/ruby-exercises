require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

# There's a video walk-through of this exercise available here:
# https://www.youtube.com/watch?v=BKqo2w0W7S0
# and a rambling blog post on this general topic here:
# https://josh.works/turing-backend-prep-02-first-tests-and-making-them-pass

class StringTest < Minitest::Test
  def test_1
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.

    assert_equal "Alice", name.capitalize
  end

  def test_2
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "ALICE", name.upcase
  end

  def test_3
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "alice", name.downcase
  end

  def test_4
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "sreppep dekcip fo kcep a dekcip repip retep", rhyme.reverse
  end

  def test_5
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    word[0] = "k"

    assert_equal "kicking", word
  end

  def test_6
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    word[0..1] = "clo"

    assert_equal "clocking", word
  end

  def test_7
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "fiv* sl**py kitt*ns", words.gsub!("e", "*")
  end

  def test_8
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "Hello!", greeting.sub!("!", "")
  end

  def test_9
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "Hello!!", greeting.chomp
  end

  def test_10
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "Hello!!\n", greeting.chomp
  end

  def test_11
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "ny, mny, miny, mo", rhyme.gsub!("e", "")
  end

  def test_12
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.

    assert_equal "ny, mny, mny, m", rhyme.delete("e").delete("i").delete("o")
  end

  def test_13
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string

    assert_equal 12, greeting.length
  end

  def test_14
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string

    assert_equal 13, greeting.length
  end

  def test_15
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string

    assert_equal 18, greeting.length
  end

  def test_16
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string

    assert_equal 2, greeting.count("o")
  end

  def test_17
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string

    assert_equal 3, greeting.scan(/[eo]/).count
  end

  def test_18
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'

    assert_equal true, greeting.include?("llo")
  end

  def test_19
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'

    assert_equal false, greeting.include?("lol")
  end

  def test_20
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    assert_equal "Hello World, my name is Harry Potter", "#{greeting} #{name}"

    # See if you can use another method to achieve the same goal:
    assert_equal "Hello World, my name is Harry Potter", greeting + " " + name

    # Again, using a different method:
    assert_equal "Hello World, my name is Harry Potter", greeting.concat(" #{name}")
    greeting = "Hello World, my name is"

    # Once more, using a different method:
    assert_equal "Hello World, my name is Harry Potter", greeting += " #{name}"
  end

  def test_21
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome

    assert_equal "to the    moon", phrase.strip
  end

  def test_22
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome

    assert_equal "   \n  \tto the    moon", phrase.rstrip
  end

  def test_23
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
  
    assert_equal "to the    moon\n\n\t    ", phrase.lstrip
  end
end
