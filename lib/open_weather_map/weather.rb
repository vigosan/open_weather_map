module OpenWeatherMap
  class Weather < Request
    def coordinates(latitude:, longitude:)
      opts = { lat: latitude, lon: longitude }
      res = request(:get, 'weather', opts)
      build_weather(res)
    end

    private

    def build_weather(attrs)
      Entities::Weather.new(attrs)
    end
  end
end
