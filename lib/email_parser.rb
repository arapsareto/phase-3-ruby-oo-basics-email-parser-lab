class EmailAddressParser
    attr_reader :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      # the "/, | /" code below is a regular expression
      # the beginning and end of a regular expression is defined by //
      # within the regular expression, we are identifying two possible strings to split on:
      # ", " or " "
      # the pipe | represents OR in a regular expression 
      emails.split(/, | /).uniq
    end
  end