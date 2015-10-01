gem 'minitest', '~> 5.2'         # ~> Gem::LoadError: Could not find 'minitest' (~> 5.2) among 14 total gem(s)\nChecked in 'GEM_PATH=/Users/joshuajhun/.rvm/gems/ruby-2.2.1:/Users/joshuajhun/.rvm/gems/ruby-2.2.1@global', execute `gem env` for more information
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'ordered_list'

class Ordered_list_test < Minitest::Test

  def test_it_can_take_input_text
    ordered_list = Ordered_list.new('string')
    assert_equal ('string'), ordered_list.input_text
  end

  def test_if_it_can_split

    ordered_list = Ordered_list.new ("1. red\n")
    assert_equal (["1. red"]), ordered_list.chunk_text
  end

  def test_if_it_can_list

    ordered_list = Ordered_list.new ("1. red")
    assert_equal ("<li>red</li>\n"), ordered_list.list_compiler
  end
  def test_if_it_can_list_again

    ordered_list = Ordered_list.new ("1. red\n")
    assert_equal ("<li>red</li>\n"), ordered_list.list_compiler
  end

  def test_if_it_can_list_more
    ordered_list = Ordered_list.new ("1. red\n2. blue\n")
    assert_equal ("<li>red</li>\n<li>blue</li>\n"), ordered_list.list_compiler
  end

  def test_if_it_can_list_more
    ordered_list = Ordered_list.new ("1. red\n2. blue\n")
    assert_equal ("<ol>\n<li>red</li>\n<li>blue</li>\n</ol>"), ordered_list.list_compiler_final
  end
end

# ~> Gem::LoadError
# ~> Could not find 'minitest' (~> 5.2) among 14 total gem(s)
# ~> Checked in 'GEM_PATH=/Users/joshuajhun/.rvm/gems/ruby-2.2.1:/Users/joshuajhun/.rvm/gems/ruby-2.2.1@global', execute `gem env` for more information
# ~>
# ~> /Users/joshuajhun/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/dependency.rb:315:in `to_specs'
# ~> /Users/joshuajhun/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/dependency.rb:324:in `to_spec'
# ~> /Users/joshuajhun/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_gem.rb:64:in `gem'
# ~> /Users/joshuajhun/Turing/MOD1/projects/chisel/ordered_list_test.rb:1:in `<main>'
