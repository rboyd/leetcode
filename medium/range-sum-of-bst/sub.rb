# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def range_sum_bst(root, l, r)
  sum = root.val >= l and root.val <= r ? root.val : 0
  sum += range_sum_bst(root.left, l, r) if root.val <= r
  sum += range_sum_bst(root.right, l, r) if root.val >= l
end


