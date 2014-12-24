require 'spec_helper'

describe OpenWeatherMap do
  describe '.configure' do
    it 'sets the configuration' do
      api_key = 'KEY'
      OpenWeatherMap.configure { |c| c.api_key = api_key }

      expect(OpenWeatherMap.configuration.api_key).to eq(api_key)
    end
  end

  describe '.reset' do
    it 'resets the configuration' do
      expect(OpenWeatherMap.configuration).to receive(:reset).once

      OpenWeatherMap.reset
    end
  end
end
