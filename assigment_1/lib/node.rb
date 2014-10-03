class Node
  attr_reader :index, :state
  attr_accessor :father

  def initialize(options = {})
    options.each do |instance_variable, value|
      instance_variable_set("@#{instance_variable}", value)
    end

    @size_of_tree ||= 1
  end

  def root
    return self if father.nil?
    father.root
  end

  def size_of_tree
    root.size_of_tree
  end

  def opened?
    state == :opened
  end

  def closed?
    state == :closed
  end
end


