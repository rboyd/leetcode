require 'set'
ROWS = ['qwertyuiop',
        'asdfghjkl',
        'zxcvbnm'].map { |row| Set.new(row.chars) }

def home_only?(word)
  ROWS.any? { |row| word.downcase.chars.all? { |ch| row.include? ch } }
end

# @param {String[]} words
# @return {String[]}
def find_words(words)
  words.select { |word| home_only?(word) }
end
