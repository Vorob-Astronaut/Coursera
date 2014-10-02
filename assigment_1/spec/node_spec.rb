require 'spec_helper'

describe Node do
  let(:opened_node) { Node.new(0, :opened)}
  let(:closed_node) { Node.new(0, :closed)}

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
end
