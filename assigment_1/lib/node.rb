class Node
  attr_reader :index, :size_of_tree, :state

  def initialize(index, state, size_of_tree = 1)
    @index = index
    @state = state
    @size_of_tree = size_of_tree
  end

  def opened?
    state == :opened
  end

  def closed?
    state == :closed
  end
end


