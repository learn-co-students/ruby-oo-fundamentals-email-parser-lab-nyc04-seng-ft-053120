# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"
class EmailAddressParser
   def initialize (emails)
       @emails = emails
   end     

   attr_accessor :emails

   def parse
       arr = @emails.split(",")
        # returns the given emails as an array splited by were there is a ","
        email_list = arr.collect do |email_ele|
            # collect will return an aray with the following done to each given element
            # now we check if there is a space
            email_ele.split(" ")
            # reminder split returns and array
            # will have to either concat or some how flatten the now nexted array
            # binding.pry
        end

       email_list.flatten.uniq
   end
end

