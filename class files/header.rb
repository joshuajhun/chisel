
class Header
  attr_reader :header     # => nil
  def initialize(header)
    @header = header
  end                     # => :initialize

  def parse
    "<h#{number}>#{text_portion}</h#{number}>"
  end                                           # => :parse

  def text_portion
    stuff = @header.chars[number + 1..-1]
    stuff.join
  end                                      # => :text_portion

  def number
    count = 0
    @header.chars.each do |character|
      if character == "#"
        count +=1
      end
    end
  count
  end                                  # => :number
end                                    # => :number
