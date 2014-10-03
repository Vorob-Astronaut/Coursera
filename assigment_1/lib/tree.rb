class Tree
  attr_accessor :nodes

  def initialize()
    @nodes = []
  end

  def union(first_node, second_node)
    return false if connected?(first_node, second_node)

    if first_node.size_of_tree > second_node.size_of_tree
      first_node.recalculate_size_with_addition_tree_as_child_of(second_node)
    else
      second_node.recalculate_size_with_addition_tree_as_child_of(first_node)
    end

    true
  end

  def bundle_nodes_together_with_percolates_checking
    nodes.each_with_index do |node, row, column|
      if node.opened?
        right_node = right_node_from_coordinates(row, column)
        union(node, right_node) if can_be_unioned?(right_node)

        return true if percolates?

        bottom_node = bottom_node_from_coordinates(row, column)
        union(node, bottom_node) if can_be_unioned?(bottom_node)

        return true if percolates?
      end
    end

    false
  end

  def connected?(first_node, second_node)
    first_node.root == second_node.root
  end

  def bundle_nodes_to_fictional_nodes
    @top_fictional_node, @bottom_fictional_node = Node.new, Node.new

    nodes.row(0).each {|node| union(node, @top_fictional_node) if node.opened?}
    nodes.row(-1).each {|node| union(node, @bottom_fictional_node) if node.opened?}
  end

  private

    def right_node_from_coordinates(row, column)
      nodes[row, column+1]
    end

    def bottom_node_from_coordinates(row, column)
      nodes[row+1, column]
    end

    def percolates?
      connected?(@top_fictional_node, @bottom_fictional_node)
    end

    def can_be_unioned?(node)
      node.present? && node.opened?
    end
end
