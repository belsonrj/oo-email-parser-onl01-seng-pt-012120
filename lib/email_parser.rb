# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
#   # you don't need name in here, it is redundant/
#   @name = name
    @csv_emails = csv_emails
  end 

# This will not work because "emails2" below will not be properly parsed  
# def parse 
#   csv_emails.split(/\s*,\s*/)
# end 

  def parse 
    csv_emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 

emails1 = "avi@test.com, arel@test.com"
parser1 = EmailParser.new(emails1)
parser1.parse 

emails2 = "avi@test.com, arel@test.com"
parser2 = EmailParser.new(emails2)
parser2.parse

