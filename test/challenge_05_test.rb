require_relative 'test_helper'
require_relative '../lib/challenge_05'

describe LapsedClients do

  it "takes in clients" do
    clients = [["John", Time.new(2002,10,31)],["Mark",Time.new(2014,11,17)],["Gary",Time.new(2014,10,10)]]
    lapsed = LapsedClients.new(clients)
    assert_equal clients, lapsed.clients
  end

  it "detects first dates older than a month" do
    clients = [["John", Time.new(2002,10,31)],["Mark",Time.new(2014,11,17)],["Gary",Time.new(2014,10,10)]]
    lapsed_clients = ["John", Time.new(2002,10,31)]
    lapsed = LapsedClients.new(clients)
    assert_equal lapsed_clients, lapsed.first_lapsed
  end

end
