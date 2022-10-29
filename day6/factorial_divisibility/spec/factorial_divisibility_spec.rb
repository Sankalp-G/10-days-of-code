require_relative '../factorial_divisibility'

#### added local tests for my own convenience ####

describe '#factorial_divisibility?' do
  context 'when it is divisible' do
    it 'returns true' do
      expect(factorial_divisibility?(4, [3, 2, 2, 2, 3, 3])).to be(true)
    end

    it 'returns true' do
      expect(factorial_divisibility?(3, [3, 2, 2, 2, 2, 2, 1, 1])).to be(true)
    end
  end

  context 'when it is not divisible' do
    it 'returns false' do
      expect(factorial_divisibility?(8, [7, 7, 7, 7, 7, 7, 7])).to be(false)
    end

    it 'returns false' do
      expect(factorial_divisibility?(5, [4, 3, 2, 1, 4, 3, 2, 4, 3, 4])).to be(false)
    end

    it 'returns false' do
      expect(factorial_divisibility?(500_000, [499_999, 499_999])).to be(false)
    end
  end
end
