# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email
  @@emails = []

  def self.all
    @@emails
  end

  def initialize(email)
    @email = email
    self.class.all << self
  end

  def parse
    rows = self.all.split(/\s|,/)
    emails = []
    rows.each do |row|
      if rows.include?(row) == false
        emails << row
      end
    end
    emails
  end
end
