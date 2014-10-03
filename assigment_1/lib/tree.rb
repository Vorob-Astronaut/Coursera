class Tree
  attr_reader :nodes

  def initialize()
    @nodes = []
  end

  def union(first_node, second_node)
    if first_node.size_of_tree > second_node.size_of_tree
      second_node.father = first_node.root
    else
      first_node.father = second_node.root
    end
  end

  def connected?(first_node, second_node)
    first_node.root == second_node.root
  end
end
