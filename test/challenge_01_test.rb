require_relative 'test_helper'
require_relative '../lib/challenge_01'

describe LowerCaseEmailGenerator do

  it "takes some emails" do
   emails = ["horace@turing.io", "JEFF@jeffisawesome.com", "StEvE@pizZa.com"]
   generator = LowerCaseEmailGenerator.new(emails)
   assert_equal emails, generator.emails
  end

  it "downcases emails" do
    emails = ["horace@turing.io", "JEFF@jeffisawesome.com", "StEvE@pizZa.com"]
    generator = LowerCaseEmailGenerator.new(emails)
    lowered = ["horace@turing.io", "jeff@jeffisawesome.com", "steve@pizza.com"]
    assert_equal lowered, generator.downcase_emails
  end

end
