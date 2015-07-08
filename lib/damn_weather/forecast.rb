module DamnWeather
  class Forecast
    include Weather

    def initialize(days)
      @count = days * 8
    end

    def weather
      JSON.parse(`curl -s "http://api.openweathermap.org/data/2.5/forecast?lat=#{geo.lat}&lon=#{geo.lng}&cnt=#{@count}&units=metric&APPID=#{APP_ID}"`)
    end

    def city
      weather['city']['name']
    end

    def country
      weather['city']['country']
    end

    def build_table(data)
      rows = []
      data.each do |k|
        date =  Date.parse(k['dt_txt']).strftime(format='%d-%m-%y')
        time = k['dt_txt'][11...-3]
        temp = k['main']['temp'].to_i
        icons = weather_icons(k['weather'].first['id']).join('  ')
        description = k['weather'].first['description']
        rows << [icons, "#{temp}\u00B0C", description, time, date]
      end
      puts Terminal::Table.new(:title => "Forecast for #{city} (#{country})", :rows => rows, :style => { :width => 80 })
    end

    def info
      weather.each do |key, response|
        build_table(response) if key == 'list'
      end
    end
  end
end
