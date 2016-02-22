gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 4, Scrabble.new.score("and")
    assert_equal 11, Scrabble.new.score("fresh")
  end

  def test_it_scores_0_when_no_word_is_given
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_scores_0_when_nil_is_given
    assert_equal 0, Scrabble.new.score(nil)
  end
end
