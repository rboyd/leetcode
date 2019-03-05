def aux(w, l)
  l.map { |item| item.is_a?(Array) ? aux(w+1, item) : item * w}.reduce(:+)
end


def depth_sum(nested_list)
  aux(1, nested_list)
end


depth_sum([[1,1],2,[1,1]])
