require 'pry'

class Strong
  attr_reader :input_text  # => nil

  def initialize(input_text)
    @input_text = input_text
  end                         # => :initialize

  def chunker
    text = @input_text
    text.split("\n\n").join
  end

  def text_portion
    new_chunker = chunker.sub("**","<strong>")
    new_chunker.sub("**","</strong>")
  end
  # require 'pry'
  # binding.pry
  #                             # => :text_portion
  # def convert_to_strong
  #   # require 'pry'
  #   # binding.pry
  #   chunker
  #   # require 'pry'
  #   # binding.pry
  # end
end
                                 # => :convert_to_strong
