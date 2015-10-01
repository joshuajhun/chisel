gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'header'

class HeaderTest < Minitest::Test
  def test_header
    header = Header.new('# string')
    result = header.parse
    assert_equal("<h1>string</h1>", result)
  end

  def test_header_like_again
    header = Header.new('# sushi')
    result = header.parse
    assert_equal("<h1>sushi</h1>", result)
  end

  def test_convert_hashtag
    header = Header.new ('## sushi')
    result = header.parse
    assert_equal("<h2>sushi</h2>",result)
  end

  def test_spliting_the_text
    header = Header.new ('# sushi')
    result = header.text_portion
    assert_equal("sushi",result)
  end

  def test_number
    header = Header.new ('# sushi')
    result = header.number
    assert_equal(1, result)
  end

  def test_hash
    skip
    header = Header.new ('#')
    refute_equal "<h1></h1>", header.parse
  end

  def test_three_hash
    header = Header.new ('### mike')
    assert_equal "<h3>mike</h3>", header.parse
  end
end



# I need to make test that change the markdown header into an html header.
# so that when it runs through the method it will see
