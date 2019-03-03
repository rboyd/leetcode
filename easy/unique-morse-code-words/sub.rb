require 'set'

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse_chars = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

  morse_map = {}
  ('a'..'z').each_with_index { |ch, i| morse_map[ch] = morse_chars[i] }

  s = Set.new
  words.each do |word|
    s << word.chars.map { |ch| morse_map[ch] }.join('')
  end

  s.count
end

unique_morse_representations(["gin", "zen", "gig", "msg"])


