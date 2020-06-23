# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(email_addresses)
        @emails =  email_addresses
    end 

    attr_accessor :emails 

    def parse
        @emails.delete(',').split.uniq
    end 
end 

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

parser.parse 