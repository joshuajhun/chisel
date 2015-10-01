gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'paragraph_chisel'

class Paragraph_test < Minitest::Test
  def test_text_translator
    skip
    paragraph = Paragraph.new ("string \n")
    assert_equal ("string \n"), paragraph.input_text
  end


  def test_it_can_paragraph

    paragraph = Paragraph.new ("joshuajhun\n\n")
    assert_equal ("<p>joshuajhun</p>"),paragraph.remove_space
  end

  def test_it_can_paragraph_again

    paragraph = Paragraph.new ("joshuajhun\n\n bro thats crazy\n\n")
    assert_equal ("<p>joshuajhun</p><p> bro thats crazy</p>"),paragraph.remove_space
  end

end
