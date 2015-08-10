# encoding: utf-8
require './test/helper'

class SimhashStringTest < Test::Unit::TestCase
  def test_string_method
    assert_equal "In the beginning was the Word".simhash(:hashbits => 64).to_s, "17095628911399577086"
  end

  def test_parameter_passing
    assert_equal "Au revoir".simhash(:stop_words => true), "revoir".simhash(:stop_words => true)
  end

  def test_splitting
    assert_equal "In the".simhash(:split_by => ""), Simhash.hash(["I", "n", " ", "t", "h", "e"])
  end



end
