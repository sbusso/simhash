# encoding: utf-8
require './test/helper'

class SimhashTest < Test::Unit::TestCase
  def test_hashing
    assert_equal Simhash.hash("In the beginning was the Word".split, :hashbits => 64, :token_min_size => 2).to_s, "17095628911399577086"
    assert_equal Simhash.hash("In the beginning was the Word".split(/./), :hashbits => 64, :token_min_size => 2).to_s, "18446744073709551615"
  end

  def test_case_insensivity
    assert_equal Simhash.hash("В Начале Было Слово".split), Simhash.hash("в начале было Слово".split)
  end

  def test_hashing_with_stopwords
    # String with stop words should be processed as same string withous stop-words
    assert_equal Simhash.hash("In the beginning was the Word".split, :hashbits => 64, :stop_words => true), Simhash.hash("Word".split, :hashbits => 64)
  end

  def test_similarity
    assert_equal Simhash.similarity(12734108349933580,12523002115301380), 0.921875
  end

end
