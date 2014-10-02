class Percolation
  attr_reader :system

  def initialize(system)
    @system = system
  end

  def close?(a, b)
    system[a, b] == 1
  end

  def open?(a, b)
    system[a, b] == 0
  end

  def percolates?
  end

  private

    def initialize_tree
    end
end
