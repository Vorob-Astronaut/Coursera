class Tree
  attr_reader :nodes

  def initialize()
    @nodes = []
  end

  def union(first_node, second_node)
    return false if connected?(first_node, second_node)

    if first_node.size_of_tree > second_node.size_of_tree
      first_node.add_node_as_child(second_node)
    else
      second_node.add_node_as_child(first_node)
    end

    true
  end

  def connected?(first_node, second_node)
    first_node.root == second_node.root
  end
end
