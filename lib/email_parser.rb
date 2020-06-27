# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser

    attr_reader :string_of_emails


    def initialize (email_string)
        #binding.pry
        @string_of_emails = email_string
    end

    def parse 
        string_of_emails.split.collect do |address|
          address.split(',') 
        end
        .flatten.uniq
    end


end
