
ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)
DB = []

def bijective_encode(i)
  # from http://refactormycode.com/codes/125-base-62-encoding
  # with only minor modification
  return ALPHABET[0] if i == 0
  s = ''
  base = ALPHABET.length
  while i > 0
    s << ALPHABET[i.modulo(base)]
    i /= base
  end
  s.reverse
end

def bijective_decode(s)
  # based on base2dec() in Tcl translation 
  # at http://rosettacode.org/wiki/Non-decimal_radices/Convert#Ruby
  i = 0
  base = ALPHABET.length
  s.each_char { |c| i = i * base + ALPHABET.index(c) }
  i
end


# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
def encode(longUrl)
  DB << longUrl
  i = DB.length-1
  bijective_encode(i)
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
  i = bijective_decode(shortUrl)
  DB
  return DB[i]
end




encode("http://google.com")
decode('a')

# Your functions will be called as such:
decode(encode("http://google.com"))
