module OpenWeatherMap
  class Configuration
    HOST = 'http://api.openweathermap.org/data/2.5'

    attr_accessor :api_key
    attr_reader :host

    def initialize
      @host = HOST
    end

    def reset
      @api_key = nil
    end
  end
end
