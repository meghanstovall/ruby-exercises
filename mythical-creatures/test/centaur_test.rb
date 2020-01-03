require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/centaur'

class CentaurTest < Minitest::Test

  def setup
    @centaur = Centaur.new("George", "Palomino")
  end

  def test_it_exists
    assert_instance_of Centaur, @centaur
  end

  def test_it_has_attributes
    assert_equal "George", @centaur.name
    assert_equal "Palomino", @centaur.breed
  end

  def test_it_has_excellent_bow_skills
    assert_equal "Twang!!!", @centaur.shoot
  end

  def test_it_makes_a_horse_sound_when_it_runs
    assert_equal "Clop clop clop clop!!!", @centaur.run
  end

  def test_when_first_created_it_is_not_cranky
    refute @centaur.cranky?
  end

  def test_when_first_created_it_is_standing_up
    assert @centaur.standing?
  end

  def test_after_running_or_shooting_a_bow_three_times_it_gets_cranky
    refute @centaur.cranky?
    @centaur.shoot
    @centaur.run
    @centaur.shoot
    @centaur.ran_or_shot_three_times
    assert @centaur.cranky?
  end

  def test_when_cranky_it_will_not_shoot_a_bow
    3.times { @centaur.shoot }
    @centaur.ran_or_shot_three_times
    assert_equal "NO!", @centaur.shoot
  end

  def test_when_cranky_it_will_not_run
    3.times { @centaur.shoot }
    @centaur.ran_or_shot_three_times
    assert_equal "NO!", @centaur.run
  end

  def test_when_standing_it_will_not_sleep
    assert_equal "NO!", @centaur.sleep
  end

  def test_after_laying_down_it_is_not_standing
    @centaur.lay_down
    refute @centaur.standing?
    assert @centaur.laying?
  end

  def test_it_can_sleep_when_laying_down
    @centaur.lay_down
    refute_equal "NO!", @centaur.sleep
  end

  def test_when_laying_down_it_cannot_shoot_a_bow
    @centaur.lay_down
    assert_equal "NO!", @centaur.shoot
  end

  def test_when_laying_down_it_cannot_run
    @centaur.lay_down
    assert_equal "NO!", @centaur.run
  end

  def test_it_can_stand_up
    @centaur.lay_down
    @centaur.stand_up
    assert @centaur.standing?
  end

  def test_after_sleeping_it_is_no_longer_cranky
    @centaur.shoot
    @centaur.run
    @centaur.shoot
    @centaur.ran_or_shot_three_times

    assert @centaur.cranky?

    @centaur.lay_down
    @centaur.sleep

    refute @centaur.cranky?

    @centaur.stand_up

    assert_equal "Twang!!!", @centaur.shoot
    assert_equal "Clop clop clop clop!!!", @centaur.run
  end

  def test_becomes_rested_after_drinking_a_potion
    @centaur.drink_potion

    assert @centaur.rested
  end

  def test_can_only_drink_potion_while_standing
    @centaur.stand_up
    @centaur.drink_potion
    assert @centaur.rested
  end

  def test_gets_sick_if_drinks_potion_while_rested
    @centaur.stand_up
    @centaur.drink_potion
    @centaur.drink_potion

    assert @centaur.sick
  end
end
