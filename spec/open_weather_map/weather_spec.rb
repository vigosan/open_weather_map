require 'spec_helper'

module OpenWeatherMap
  describe Weather do
    describe 'coordinates' do
      it 'returns current weather by geographic coordinates' do
        url = 'http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139'
        response = {
          'coord' => {
            'lon' => 139,
            'lat' => 35
          },
          'sys' => {
            'message' => 0.2658,
            'country' => 'JP',
            'sunrise' => 1419198511,
            'sunset' => 1419233800
          },
          'weather' => [
            {
              'id' => 800,
              'main' => 'Clear',
              'description' => 'Sky is Clear',
              'icon' => '01n'
            }
          ],
          'base' => 'cmc stations',
          'main' => {
            'temp' => 272.102,
            'temp_min' => 272.102,
            'temp_max' => 272.102,
            'pressure' => 983.56,
            'sea_level' => 1028.86,
            'grnd_level' => 983.56,
            'humidity' => 86
          },
          'wind' => {
            'speed' => 2.26,
            'deg' => 279.001
          },
          'clouds' => {
            'all' => 0
          },
          'dt' => 1419272485,
          'id' => 1851632,
          'name' => 'Shuzenji',
          'cod' => 200
        }
        body = JSON.dump(response)
        headers = { 'Content-Type' => 'application/json' }

        stub_request(:get, url).
          to_return(status: 200, body: body, headers: headers)

        weather = Weather.new.coordinates(latitude: 35, longitude: 139)

        expect(weather.id).to eq(1851632)
        expect(weather.wind.speed).to eq(2.26)
      end
    end
  end
end
