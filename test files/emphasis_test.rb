gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'emphasis'

class Emphasis_test < Minitest::Test

  def test_it_can_take_input_text
    skip
    emphasis = Emphasis.new("string")
    assert_equal ("string"), emphasis.input_text
  end

  def test_it_can_chunk
    skip
    emphasis = Emphasis.new("string\n\n")
    assert_equal ("string"), emphasis.chunker
  end

  def test_it_can_convert
    skip
    emphasis = Emphasis.new("*string*\n\n")
    assert_equal ("<em>string</em>"), emphasis.text_converter
    end

  def test_it_can_tell_the_Difference
    skip
    emphasis = Emphasis.new("*string* **strong**")
    assert_equal ("<em>string</em> **strong**"), emphasis.text_converter
  end

  def test_it_can_tell_the_Difference_again
    emphasis = Emphasis.new( "my *emphasized and **stronged** text*")
    assert_equal ("my <em>emphasized and **stronged** text</em>"), emphasis.text_converter
  end


end
