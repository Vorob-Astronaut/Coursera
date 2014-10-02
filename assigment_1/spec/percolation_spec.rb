require 'spec_helper'

describe Percolation do
  let(:matrix) { Matrix.identity(3) }
  subject { Percolation.new(matrix) }

  describe '#open?' do
    it 'checks if can be true' do
      expect(subject.open?(1, 0)).to eq(true)
    end

    it 'checks if can be false' do
      expect(subject.open?(0, 0)).to eq(false)
    end
  end

  describe '#close?' do
    it 'checks if can be true' do
      expect(subject.close?(0,0)).to eq(true)
    end

    it 'checks if can be false' do
      expect(subject.close?(1, 0)).to eq(false)
    end
  end
end
