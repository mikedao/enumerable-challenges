require_relative 'test_helper'
require_relative '../lib/01'

class EmailTest < Minitest::Test

  def test_downcaser
    emails = ["A@ABC.COM", "D@DEF.com","JeFf@TuRinG.Io","test@test.com" ]
    expected_output =  ["a@abc.com","d@def.com","jeff@turing.io", "test@test.com"]
    assert_equal expected_output, Email.lowercase(emails)
  end

end
