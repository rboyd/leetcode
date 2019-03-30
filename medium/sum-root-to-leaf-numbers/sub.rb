# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end


def aux(root, accum)
  ret = 0
  ret += aux(root.left, root.val + (accum * 10)) if root.left
  ret += aux(root.right, root.val + (accum * 10)) if root.right

  return ret if root.left or root.right

  root.val + (accum * 10)
end

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
  return 0 unless root
  aux(root, 0)
end

# r = TreeNode.new(4)
# r.left = TreeNode.new(9)
# r.right = TreeNode.new(0)
# r.left.left = TreeNode.new(5)
# r.left.right = TreeNode.new(1)

# sum_numbers(r)
