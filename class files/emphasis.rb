class Emphasis
  attr_reader :input_text

  def initialize (input_text)
    @input_text = input_text
  end

  def chunker
    text = @input_text
    text.split("\n\n").join
  end

  def text_converter
    new_converter = chunker.sub("*","<em>")
    new_converter.sub("*","</em>")
  end



end
