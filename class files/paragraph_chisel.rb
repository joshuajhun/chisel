# require 'pry!'

class Paragraph
  attr_reader :input_text


  def initialize(input_text)
    @input_text = input_text
  end

  def splitter

    text = @input_text
    text.split("\n\n")
    # binding.pry
  end


  def remove_space
    splitter.map do |line|
    "<p>#{line}</p>"
    end.join
  end


  # end

end
