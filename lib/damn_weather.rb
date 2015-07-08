require 'mm_geoip'
require 'json'
require 'terminal-table'
require "damn_weather/version"
require "damn_weather/emoji"
require 'damn_weather/weather'
require 'damn_weather/now'
require 'damn_weather/forecast'

module DamnWeather

  def db_file_check
    gems_path = `gem environment gemdir`.strip
    db_file = "#{gems_path}/gems/mm_geoip-0.1.1/data/GeoLiteCity.dat"
    unless File.exist?(db_file)
      puts "Downloading database file... (This may take a while)"
      system "curl -s http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz | gunzip > #{gems_path}/gems/mm_geoip-0.1.1/data/GeoLiteCity.dat"
    end
  end
end
