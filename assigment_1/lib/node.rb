class Node
  attr_reader :index, :size_of_tree, :state
  attr_accessor :father

  def initialize(options = {})
    options.each do |instance_variable, value|
      instance_variable_set("@#{instance_variable}", value)
    end
  end

  def root
    return self if father.nil?
    father.root
  end

  def opened?
    state == :opened
  end

  def closed?
    state == :closed
  end
end


