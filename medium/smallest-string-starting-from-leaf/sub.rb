def to_chr(i)
  (i+96).chr
end


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
def aux(accum, root)
  ch = (root.val+97).chr

  if root.left.nil? and root.right.nil?
    return ch + accum
  end

  left_smallest = aux(ch + accum, root.left) if root.left
  right_smallest = aux(ch + accum, root.right) if root.right

  return right_smallest if left_smallest.nil?
  return left_smallest if right_smallest.nil?

  if left_smallest <= right_smallest
    left_smallest
  else
    right_smallest
  end
end
# @param {TreeNode} root
# @return {String}
def smallest_from_leaf(root)
  aux('', root)
end

