class ZabbixApi
  class Configuration

    def initialize(client)
      @client = client
    end

    def export(data)
      @client.api_request(:method => "configuration.export", :params => {:format => 'xml', :options => data})
    end

  end
end
