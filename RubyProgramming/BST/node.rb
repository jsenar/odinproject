class Node
  attr_acessor :value, :left_child, :right_child

  def initialize(value, left_child=nil, right_child=nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end
end
