# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end
    
    def parse
        @emails.split(/,*\s|,/).uniq
    end

    # def parse
    #      @emails.split(' ').map do |email|
    #          email[-1] == ',' ? email.slice(0..-2) : email
    #      end
    #      .uniq
    # end
end