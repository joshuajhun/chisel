gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'strong'
require "pry"


class StrongTest < Minitest::Test
  def test_it_receives_input_text
    skip
    strong = Strong.new ("**strong**")
    assert_equal ("**strong**"), strong.input_text
  end

  def test_if_it_can_replace_a_star_with_text_in_the_middle
    strong = Strong.new("**this is strong**\n\n")
    assert_equal ("<strong>this is strong</strong>"), strong.text_portion
  end

  def test_if_it_can_strong_with_surrounding_text
    strong = Strong.new ("hello how are you **this is strong**")
    assert_equal ("hello how are you <strong>this is strong</strong>"),strong.text_portion
  end

  def test_this_thing_really_works
    strong = Strong.new ("I like ** Sushi **.")
    expected = "I like <strong> Sushi </strong>."
    assert_equal expected,strong.text_portion
  end



end
