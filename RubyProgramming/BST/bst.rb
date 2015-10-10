require './node.rb'

class BST
  attr_accessor :root

  def initialize(root_data = nil)
    @root = Node.new(root_data) unless root_data.nil?
  end

  def BST.build_tree data_array
    bst = BST.new
    data_array.each { |data| bst.add(data) }
    bst
  end

  def add node_data
    if @root.nil?
      @root = Node.new(node_data)
    else
      add_to_bst(Node.new(node_data), @root)
    end
  end

  def add_to_bst(node, ancestor)
    return node if ancestor.nil?

    node.parent = ancestor

    if node.value < ancestor.value
      ancestor.left_child = add_to_bst(node, ancestor.left_child)
    else
      ancestor.right_child = add_to_bst(node, ancestor.right_child)
    end
    ancestor
  end

  def inorder
    tree_data = []
    tree_data = inorder_traverse(@root, tree_data)
  end

  def inorder_traverse(node,data)
    return data if node.nil?
    inorder_traverse(node.left_child, data)
    data << node.value
    inorder_traverse(node.right_child, data)
  end


