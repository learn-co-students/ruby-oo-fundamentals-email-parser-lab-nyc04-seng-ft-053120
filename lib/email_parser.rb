# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
#"avi@test.com, arel@test.com" (emails)

class EmailAddressParser 
    attr_accessor :emails
    
    def initialize(emails)
        @emails = emails
    end
    
    # def parse
    
    #     parsed_emails = @emails.split(',')
    #    email_results =  parsed_emails.map do |email|
    #         if email[0] == " "
                
    #             email[0].slice(1,email.length)
    #         end
    #     end
    #     parsed_emails.uniq
 
    #     end
    def parse
        @emails.delete(",").split.uniq
        
    end

end