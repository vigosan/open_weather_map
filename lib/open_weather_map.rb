require 'json'
require 'faraday'

require 'open_weather_map/version'
require 'open_weather_map/configuration'
require 'open_weather_map/entity'
require 'open_weather_map/entities/weather'
require 'open_weather_map/request'
require 'open_weather_map/weather'

module OpenWeatherMap
  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      configuration.reset
    end
  end
end
