# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# End of instructions.

class EmailAddressParser
    attr_accessor :email

    def initialize(email)
        @email = email
    end
    
    def parse
        email.split(/[,\s]+/).uniq
    end
end

#line 15
# [] match any character in that set.
# + treats multiple spaces bewtween emails as a single character
