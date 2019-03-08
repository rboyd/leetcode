# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
def aux(root)
    return nil unless root
  l = aux(root.left) if root.left
  r = aux(root.right) if root.right
    ret = [root.val]
    ret << l if l
    ret << r if r
  ret = ret.flatten.uniq.sort[0,2]
end
# @param {TreeNode} root
# @return {Integer}
def find_second_minimum_value(root)
  ret = aux(root)
 #   puts ret.inspect
    ret.size == 2 ? ret[1] : -1
end
