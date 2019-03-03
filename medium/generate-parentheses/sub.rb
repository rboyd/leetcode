# @param {Integer} n
# @return {String[]}

def gen_aux(ret, output, o, c, pairs)
  if o == pairs and c == pairs
    ret << output
  else
    if o < pairs
      gen_aux(ret, output + '(', o+1, c, pairs)
    end

    if c < o
      gen_aux(ret, output + ')', o, c+1, pairs)
    end
  end
end

def generate_parenthesis(n)
  ret = []
  gen_aux(ret, '', 0, 0, n)
  ret
end


generate_parenthesis(4)



["(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()"].count
