class Percolation
  attr_reader :system

  def initialize(system)
    @system = system
  end

  def percolates?
    initialize_system

    @tree.bundle_nodes_to_fictional_nodes
    @tree.bundle_nodes_together_with_percolates_checking
  end

  private

    def initialize_system
      @tree = Tree.new

      @tree.nodes = system.map do |element|
        Node.new(state: state_of(element))
      end
    end

    def state_of(element)
      element.zero? ? :opened : :closed
    end
end
