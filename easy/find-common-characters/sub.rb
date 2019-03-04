# @param {String[]} a
# @return {String[]}

def intersection(a,b)
  (a|b).flat_map { |s| [s]*[a.count(s), b.count(s)].min }  # => ["b", "e", "l", "l", "a"], ["B", "C", "D", "D"], ["b", "e", "l", "l", "a"], ["e", "l", "l"], ["c", "o", "l"], ["c", "o"]
end                                                        # => :intersection

def common_chars(a)
    a.map { |z| z.chars }.reduce { |lhs, rhs| intersection(lhs, rhs) }  # => ["e", "l", "l"], ["c", "o"], ["a"]
end                                                                     # => :common_chars


intersection("bella".chars,"label".chars)  # => ["b", "e", "l", "l", "a"]

a = ["A", "B", "B", "C", "D", "D"]  # => ["A", "B", "B", "C", "D", "D"]
b = ["B", "C", "D", "D", "D", "E"]  # => ["B", "C", "D", "D", "D", "E"]

intersection(a, b)  # => ["B", "C", "D", "D"]

common_chars(["bella","label","roller"])  # => ["e", "l", "l"]

common_chars(["cool","lock","cook"])  # => ["c", "o"]

common_chars(['a'])  # => ["a"]

