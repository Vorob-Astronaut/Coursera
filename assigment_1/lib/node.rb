class Node
  attr_reader :state
  attr_accessor :father, :count_of_nodes

  def initialize(options = {})
    options.each do |instance_variable, value|
      instance_variable_set("@#{instance_variable}", value)
    end

    @count_of_nodes ||= 1
  end

  def root
    return self if root?
    father.root
  end

  def size_of_tree
    root.count_of_nodes
  end

  def size_of_tree=(count)
    root.count_of_nodes = count
  end

  def recalculate_size_with_addition_tree_as_child_of(node)
    self.size_of_tree += node.size_of_tree
    node.root.father = root
  end

  def opened?
    state == :opened
  end

  def closed?
    state == :closed
  end

  def root?
    father.nil?
  end
end
