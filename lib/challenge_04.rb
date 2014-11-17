class LapsedClients
  attr_reader :clients

  def initialize(clients)
    @clients = clients
  end

  def lapsed
    clients.select do |client|
      Time.now - client[1] > 2592000
    end
  end

end
