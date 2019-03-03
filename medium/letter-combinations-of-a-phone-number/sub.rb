
def init
  i = 1
  m = {}
  ('a'..'o').each_slice(3) do |sl|
    i += 1
    m[i.to_s] = sl.to_a
  end
  m['7'] = ('p'..'s').to_a
  m['8'] = ('t'..'v').to_a
  m['9'] = ('w'..'z').to_a
  m
end


def gen_aux(output, constr, digits, m)
  if digits.empty?
    output << constr
    return
  end

  digit = digits.shift
  m[digit].each do |ch|
    gen_aux(output, constr + ch, digits.dup, m)
  end
end

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?
  output = []
  gen_aux(output, '', digits.chars, init())
  output
end

letter_combinations('')
