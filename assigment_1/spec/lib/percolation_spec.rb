require 'spec_helper'

describe Percolation do
  let(:matrix) { Matrix.identity(3) }
  subject { Percolation.new(matrix) }

  describe 'percotates?' do
    it 'return false' do
      matrix = Matrix[[1,1],
                      [1,1]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(false)
    end

    it 'return false' do
      matrix = Matrix[[1,0],
                      [0,1]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(false)
    end

    it 'return true' do
      matrix = Matrix[[0,1],
                      [0,1]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(true)
    end

    it 'return true' do
      matrix = Matrix[[0,0],
                      [0,0]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(true)
    end

    it 'return false' do
      matrix = Matrix[[0,1],
                      [1,0]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(false)
    end

    it 'return true' do
      matrix = Matrix[[1,0,1,0],
                      [1,0,1,1],
                      [1,0,0,0],
                      [1,1,1,0]]
      percolation = Percolation.new(matrix)

      expect(percolation.percolates?).to eq(true)
    end


  end
end
