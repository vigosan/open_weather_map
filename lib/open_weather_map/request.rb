module OpenWeatherMap
  class Request
    attr_reader :configuration

    def initialize(configuration: OpenWeatherMap.configuration)
      @configuration = configuration
    end

    def request(method, path, opts={})
      response = connection.send(method, path, opts)
      handle_response(response)
    end

    private

    def connection
      conn = Faraday.new
      conn.url_prefix = configuration.host
      conn
    end

    def handle_response(response)
      return parse_response(response) if response.success?
      handle_error_response(response)
    end

    def parse_response(response)
      JSON.parse(response.body)
    end

    def handle_error_response(response)
    end
  end
end
