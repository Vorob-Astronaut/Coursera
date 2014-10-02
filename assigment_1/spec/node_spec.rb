require 'spec_helper'

describe Node do
    describe '#open?' do
    it 'checks if can be true' do
      node = Fabricate(:opened_node)
      expect(node.opened?).to eq(true)
    end

    it 'checks if can be false' do
      node = Fabricate(:closed_node)
      expect(node.opened?).to eq(false)
    end
  end

  describe '#close?' do
    it 'checks if can be true' do
      node = Fabricate(:closed_node)
      expect(node.closed?).to eq(true)
    end

    it 'checks if can be false' do
      node = Fabricate(:opened_node)
      expect(node.closed?).to eq(false)
    end
  end
end
