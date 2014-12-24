# OpenWeatherMap

A ruby wrapper for Open Weather Map

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_weather_map'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install open_weather_map

## Configuration

    OpenWeatherMap.configure do |c| 
      c.api_key = api_key
    end

## Usage

### Retrieve current weather data by geographic coordinates

    OpenWeatherMap::Weather.new.coordinates(latitude: 35, longitude: 139)

## Contributing

1. Fork it ( https://github.com/vigosan/open_weather_map/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
