gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'chunker'

class Chunker_test < Minitest::Test
  def test_it_receives_input_text
    chunker = Chunker.new("input text/n")
    assert_equal ("input text/n"), chunker.input_text
  end

  def test_it_can_split_text

    chunker = Chunker.new ("this is a lot of text/n")
    assert_equal (["this is a lot of text/n"]), chunker.split_input_text
  end

  def test_it_can_split_the_line_breaks_into_chunks_
    chunker = Chunker.new ("this is alot of text\n\nso i hope this works out for you\n\ngood lucke with everything")
    assert_equal (["this is alot of text","so i hope this works out for you", "good lucke with everything"]),chunker.split_input_text
  end

  def test_it_can_split_with_a_bunch_of_header_markings_and_not_mess_up
    chunker = Chunker.new ("##how are you?? /n I hope that things are good####/n\n\n###Awesome")
    assert_equal (["##how are you?? /n I hope that things are good####/n", "###Awesome"]), chunker.split_input_text
  end

  def test_that_same_thing_again
    chunker = Chunker.new ("##hey\n\n**whats\n\n")
    assert_equal (["##hey","**whats"]), chunker.split_input_text

  end
end
