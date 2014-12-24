module OpenWeatherMap
  module Entities
    class Weather < Entity
      ATTRIBUTES = [
        :coord, :sys, :weather, :base, :main, :wind, :clouds, :dt, :id, :name, :cod
      ]
    end
  end
end
