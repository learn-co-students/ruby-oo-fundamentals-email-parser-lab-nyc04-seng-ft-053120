# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    # use split(' ') to get an array of emails split by space
    # map through each email in the array, if the email ends with "," then return the email without the comma, otherwise return the email
    # use .uniq to filter for only unique elements in the array
    @email_addresses.split(' ').map do |email|
      email.end_with?(",") ? email[0..-2] : email
    end.uniq
  end

end