# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser 
    attr_accessor :name, :csv_emails 
    
    def initialize(csv_emails) 
      @csv_emails = csv_emails #instance variable
    end 
  
    def parse 
      csv_emails.split.collect do |address|  #splits string into an array.
        address.split(',') #each element separated by a comma
      end
      .flatten.uniq #removes duplicate emails
    end 
  end 

  