
class Header
  attr_reader :header
  def initialize(header)
    @header = header
  end

  def parse
    "<h#{number}>#{text_portion}</h#{number}>"
  end

  def text_portion
    stuff = @header.chars[number + 1..-1]
    stuff.join
  end

  def number
    count = 0
    @header.chars.each do |character|
      if character == "#"
        count +=1
      end
    end
  count
  end
end
