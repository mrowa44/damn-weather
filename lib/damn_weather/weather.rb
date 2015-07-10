module DamnWeather
  module Weather
    include Emoji
    APP_ID = '7dd66fce2c3028c4b1c55d3781d707be'

    # Weather codes can be found here: http://bugs.openweathermap.org/projects/api/wiki/Weather_Condition_Codes
    def weather_icons(id, num = 3)
      case id
      when (312..314), 321, (502..504), 511, (520..522), 531, 906
        heavy_rain.sample(num)
      when (300..311), 500, 501
        light_rain.sample(num)
      when (600..602), 611, 612, 615, 616, (620..622), 903
        snow.sample(num)
      when 701, 711, 721, 731, 741, 751, 761, 905, (952..958)
        fog_wind.sample(num)
      when 762, 771, 781, (900..902), 962
        extreme.sample(num)
      when 800, 801, 904, 951
        sunny.sample(num)
      when 802, 803, 950
        partly_cloudy.sample(num)
      when 804
        cloudy.sample(num)
      when (200..202), (210..212), 221, (230..232), (959..961)
        thunder.sample(num)
      end
    end

    def geo
      current_ip = open('http://ipecho.net/plain').read
      MMGeoip.new(ip: current_ip)
    end
  end
end
