# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email
  @@emails = []
  def initialize(emails)
    @@emails = emails
  end

  def parse
    rows = @@emails.split(/\s|,/)
    emails = []
    rows.collect do |row|
      if rows.include?(row) == false
        emails << row
      end
    end
    emails
  end
end
