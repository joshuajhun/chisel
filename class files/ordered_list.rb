# require 'pry'              # ~> LoadError: cannot load such file -- pry
class Ordered_list
  attr_reader :input_text

  def initialize (input_text)
    @input_text = input_text
  end

  def chunk_text
    text = @input_text
    a = text.split("\n")
    # a.chars # ~> NoMethodError: undefined method `chars' for ["1. red", "2. blue"]:Array

  end


  def list_compiler
    information = chunk_text.map do |string|
    string[3..-1]
    end
    information.map do |list|
        "<li>#{list}</li>\n"
      end.join
    end

  def list_compiler_final
   open_l= "<ol>\n"
   close_l= "</ol>"
   open_l+list_compiler+close_l
    #  binding.pry
  end




end

# Ordered_list.new("1. red\n2. blue\n").list_compiler
