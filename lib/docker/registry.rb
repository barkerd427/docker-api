require 'docker/registry/search'
require 'docker/registry/connection'

class Docker::Registry

  def initialize
    @connection = Docker::Registry::Connection.new
  end

  def connection
    @connection
  end

  def search(connection = @connection)
    Docker::Registry::Search.new(connection)
  end
end