module Emoji
  def heavy_rain
    ["\xF0\x9F\x92\xA6", # multiple drops
    "\xE2\x98\x94", # umbrella with drops
    "\xF0\x9F\x98\x9E", # disappointed face
    "\xF0\x9F\x98\xBF", # crying cat
    "\xF0\x9F\x92\xA7" # droplet
    ]
  end

  def light_rain
    ["\xF0\x9F\x92\xA7", # droplet
     "\xF0\x9F\x98\x92", # unamused face
     "\xE2\x9B\x85" # sun behind cloud
    ]
  end

  def snow
    ["\xE2\x9B\x84", # snowman
     "\xF0\x9F\x8F\x82", # snowboarder
     "\xE2\x9D\x84" # snowflake
    ]
  end

  def fog_wind
    ["\xF0\x9F\x8C\x81", # foggy
     "\xF0\x9F\x8D\x83", # leaf fluttering in wind
     "\xF0\x9F\x92\xA8" # dash symbol
    ]
  end

  def extreme
    ["\xF0\x9F\x8C\x80", # cyclone
     "\xF0\x9F\x92\xA2", # anger symbol
     "\xF0\x9F\x98\xB1", # face screaming in fear
     "\xF0\x9F\x8C\x8B", # volcano
     "\xF0\x9F\x94\xA5" # fire
    ]
  end

  def sunny
    ["\xF0\x9F\x98\x8E", # sunglasses
     "\xF0\x9F\x94\x86", # high brightness symbol
     "\xF0\x9F\x91\x8D" # thumbs up
    ]
  end

  def partly_cloudy
    ["\xE2\x9B\x85", # sun behind cloud
     "\xF0\x9F\x98\x92", # unamused face
     "\xF0\x9F\x9A\xA8" # police light
    ]
  end

  def cloudy
    ["\xE2\x9B\x85", # sun behind cloud
     "\xF0\x9F\x8C\x82", # closed umbrella
     "\xF0\x9F\x92\xAD" # thought balloon
    ]
  end

  def thunder
    ["\xF0\x9F\x98\xA8", # fearful face
     "\xF0\x9F\x99\x88", # monkey with hands on face
     "\xE2\x98\x94", # umbrella with drops
     "\xE2\x9A\xA1" # high voltage sigh
    ]
  end
end
