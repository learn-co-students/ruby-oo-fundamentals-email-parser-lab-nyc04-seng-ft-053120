class EmailAddressParser
  attr_accessor :emails_str
  def initialize(str)
    @emails_str = str
  end

  def parse
    @emails_str.split(/, | /).uniq
  end
end