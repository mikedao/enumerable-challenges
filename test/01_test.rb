require_relative 'test_helper'
require_relative '../lib/01'

describe LowerCaseEmailGenerator do

  it "takes some emails" do
   emails = ["horace@turing.io", "JEFF@jeffisawesome.com", "StEvE@pizZa.com"]
   generator = LowerCaseEmailGenerator.new(emails)
   assert_equal emails, generator.emails
 end

end
