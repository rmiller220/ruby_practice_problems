require 'solo_tech_challenge'

RSpec.describe 'Solo Tech Challenge' do
  describe 'Palindromic Sum' do
    it 'returns the first 25 palindrome numbers' do
      expect(palindromic_sum(1..1000)).to eq([209, 308, 407, 506, 605, 704, 803, 902, 1000])
    end
  end

  describe 'Robot' do
    it 'returns true if robot returns to starting position' do
      expect(robot('GLGLGLG')).to eq(true)
      expect(robot('GRGRGRG')).to eq(true)
    end

    it 'returns false if robot does not return to starting position' do
      expect(robot('GGGLGR')).to eq(false)
      expect(robot('GRGRGRGL')).to eq(false)
    end
  end

  describe 'Next Palindrome' do
    it 'returns the next number that is a palindrome' do
      expect(find_next_palindrome(101)).to eq(111)
      expect(find_next_palindrome(111)).to eq(121)
      expect(find_next_palindrome(191)).to eq(202)
      expect(find_next_palindrome(909)).to eq(919)
    end
  end

  describe 'Merge Sorted Array' do
    it 'returns a merged array with the length based on input values of n and m' do
      expect(merge_sorted_array([1,2,3,0,0,0], 3, [2,5,6], 3)).to eq([1,2,2,3,5,6])
      expect(merge_sorted_array([1], 1, [], 0)).to eq([1])
      expect(merge_sorted_array([0], 0, [1], 1)).to eq([1])
    end
  end

  describe "Pascal's Triangle" do
    it 'returns the row of the triangle based on the input value of row_index' do
      expect(get_row(3)).to eq([1,3,3,1])
      expect(get_row(0)).to eq([1])
      expect(get_row(1)).to eq([1,1])
    end
  end
end