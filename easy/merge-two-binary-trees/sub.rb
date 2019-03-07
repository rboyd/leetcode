
def merge_trees(t1, t2)
    return [] if t1.nil? and t2.nil?
  if t1 and t2
    t1.val += t2.val
    t1.left = merge_trees(t1.left, t2.left) if t2.left or t2.left
    t1.right = merge_trees(t1.right, t2.right) if t1.right or t2.right
    t1
  else
    if t1
      t1
    else
      t2
    end
  end
end
