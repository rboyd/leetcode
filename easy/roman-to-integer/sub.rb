SUBMAP = {/IV/ => 4,
          /IX/ => 9,
          /XL/ => 40,
          /XC/ => 90,
          /CD/ => 400,
          /CM/ => 900}

ADDMAP = {/I+/ => 1,
          /V+/ => 5,
          /X+/ => 10,
          /L+/ => 50,
          /C+/ => 100,
          /D+/ => 500,
          /M+/ => 1000}

def roman_to_int(s)
  total = 0
  SUBMAP.each_pair do |regex, amt|
    if s =~ regex
      s.gsub!(regex, '')
      total += amt
    end
  end
  ADDMAP.each_pair do |regex, amt|
    if s =~ regex
      matches = s.match(regex)
      total += matches[0].length * amt
    end
  end
  total
end

roman_to_int('VII')
