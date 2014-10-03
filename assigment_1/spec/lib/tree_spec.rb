require 'spec_helper'

describe Tree do
  let(:tree) { Tree.new }

  describe '#union' do
    it 'check if size of tree changed' do
      first_node = Node.new
      second_node = Node.new
      third_node = Node.new

      tree.union(first_node, second_node)
      tree.union(second_node, third_node)

      expect(first_node.size_of_tree).to eq(3)
    end
  end

  describe '#connected?' do
    it 'checks if return true' do
      root = Node.new
      first_node = Node.new(father: root)
      second_node = Node.new(father: root)


      expect(Tree.new.connected?(first_node, second_node)).to eq(true)
    end

    it 'checks if return false' do
      root = Node.new
      first_node = Node.new(father: root)
      second_node = Node.new

      expect(Tree.new.connected?(first_node, second_node)).to eq(false)
    end
  end
end
