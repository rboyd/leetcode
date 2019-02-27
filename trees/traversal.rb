
# recursive solution
# def preorder_traversal(root)
#   return [] if root.nil?
#   ret = [root.val]
#   ret << preorder_traversal(root.left) unless root.left.nil?
#   ret << preorder_traversal(root.right) unless root.right.nil?
#   ret.flatten
# end


def preorder_traversal(root)
  return [] if root.nil?
  ret = []
  stack = []
  stack << root
  loop do
    node = stack.pop
    ret << node.val
    stack << node.right if node.right
    stack << node.left if node.left
    break if stack.empty?
  end
  ret
end

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end


root = TreeNode.new(1)
root.right = TreeNode.new(2)
root.right.right = TreeNode.new(3)

puts preorder_traversal(root)
#puts preorder_traversal(nil)

([1, 2, 3] << 4).pop



