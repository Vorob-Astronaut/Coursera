class Tree
  attr_reader :nodes

  def initialize()
    @nodes = []
  end

  def union(first_node, second_node)
    return false if connected?(first_node, second_node)

    if first_node.size_of_tree > second_node.size_of_tree
      second_node.root.father = first_node.root
      first_node.size_of_tree += second_node.size_of_tree
    else
      first_node.root.father = second_node.root
      second_node.size_of_tree += first_node.size_of_tree
    end

    true
  end

  def connected?(first_node, second_node)
    first_node.root == second_node.root
  end
end
