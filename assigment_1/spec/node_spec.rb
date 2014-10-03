require 'spec_helper'

describe Node do
  let(:opened_node) { Node.new(state: :opened)}
  let(:closed_node) { Node.new(state: :closed)}

  describe '#open?' do
    it 'checks if can be true' do
      expect(opened_node.opened?).to eq(true)
    end

    it 'checks if can be false' do
      expect(closed_node.opened?).to eq(false)
    end
  end

  describe '#close?' do
    it 'checks if can be true' do
      expect(closed_node.closed?).to eq(true)
    end

    it 'checks if can be false' do
      expect(opened_node.closed?).to eq(false)
    end
  end

  describe '#root' do
    it '#returns root' do
      root = Node.new
      child = Node.new(father: root)
      sub_child = Node.new(father: child)

      expect(sub_child.root).to eq(root)
    end
  end
end
