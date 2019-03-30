class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def aux(root, accum, sum)
  root.val
  accum += root.val
  return true if accum == sum and (root.left.nil? and root.right.nil?)

  ret = aux(root.left, accum, sum) if root.left
  return true if ret

  ret = aux(root.right, accum, sum) if root.right
  return true if ret
  false
end

def has_path_sum(root, sum)
  return false unless root
  aux(root, 0, sum)
end


# r = TreeNode.new(-2)
# r.right = TreeNode.new(-3)

# has_path_sum(r, -5)
