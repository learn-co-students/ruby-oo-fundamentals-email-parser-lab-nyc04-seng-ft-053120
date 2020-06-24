# Build a class EmailAddressParser that accepts a string of unformatted 
require 'pry'
class EmailAddressParser
    attr_reader :emails
    
    def initialize(emails)
        @emails = emails
      end

      def parse
       # binding.pry
       arr = [", "," "]
        @emails.split(Regexp.union(arr)).uniq
      end

    end

# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
