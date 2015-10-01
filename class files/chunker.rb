class Chunker
  attr_reader :input_text         # => nil

  def initialize (input_text)
    @input_text = input_text
    end                        # => :initialize

  def split_input_text
    @input_text.split("\n\n")

    end                   # => :split_input_text
  end                   # => :split_input_text
