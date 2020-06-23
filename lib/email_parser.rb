class EmailAddressParser
  attr_accessor :emails_str
  def initialize(str)
    @emails_str = str
  end

  def parse
    @emails_str.split(/\b(, | )\b/).uniq.select {|el| el.length > 2}
  end
end