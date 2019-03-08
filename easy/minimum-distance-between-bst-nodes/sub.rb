def aux(root)
  aux(root.left) if root.left
  if @prev
    @min = [@min, (root.val - @prev).abs].min
  end
  @prev = root.val
  aux(root.right) if root.right
end

# @param {TreeNode} root
# @return {Integer}
def min_diff_in_bst(root)
  @min = Float::INFINITY
  @prev = nil
  aux(root)
  @min
end
