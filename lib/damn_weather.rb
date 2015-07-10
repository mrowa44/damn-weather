require 'mm_geoip'
require 'json'
require 'open-uri'
require 'zlib'
require 'terminal-table'
require "damn_weather/version"
require "damn_weather/emoji"
require 'damn_weather/weather'
require 'damn_weather/now'
require 'damn_weather/forecast'

module DamnWeather

  def db_file_check
    gem_root = Gem::Specification.find_by_name('mm_geoip').gem_dir
    db_file = "#{gem_root}/data/GeoLiteCity.dat"
    unless File.exist?(db_file)
      puts "Downloading database file... (This may take a while)"
      open(db_file, 'w') do |local_file|
        open('http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz') do |remote_file|
          local_file.write(Zlib::GzipReader.new(remote_file).read)
        end
      end
    end
  end
end
