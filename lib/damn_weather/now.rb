module DamnWeather
  class Now
    include Weather

    def weather
      JSON.parse(`curl -s "http://api.openweathermap.org/data/2.5/weather?lat=#{geo.lat}&lon=#{geo.lng}&units=metric&APPID=#{APP_ID}"`)
    end

    def id
      weather['weather'].first['id']
    end

    def temp
      weather['main']['temp'].to_i
    end

    def description
      weather['weather'].first['description']
    end

    def country
      weather['sys']['country']
    end

    def city
      weather['name']
    end

    def date
      `date "+%d-%m-%y"`.strip
    end

    def info
      puts "#{weather_icons(id).join('  ')}  #{description}, #{temp}\u00B0C in #{city} (#{country}) on #{date}."
    end
  end
end