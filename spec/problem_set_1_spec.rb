require 'problem_set_1'

RSpec.describe 'Problem Set 1' do
  describe 'Anagram' do
    it 'returns true if words are anagrams' do
      expect(anagram?('cinema', 'iceman')).to eq(true)
    end

    it 'returns false if words are not anagrams' do
      expect(anagram?('cinema', 'icemans')).to eq(false)
    end
  end

  describe 'Palindrome' do
    it 'returns true if word is a palindrome' do
      expect(palindrome?('racecar')).to eq(true)
    end

    it 'returns false if word is not a palindrome' do
      expect(palindrome?('racecars')).to eq(false)
    end
  end

  describe 'Two Sum' do
    it 'returns the indices of the two numbers that add up to the target' do
      expect(two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
      expect(two_sum([3, 2, 4], 6)).to eq([1, 2])
      expect(two_sum([3, 3], 6)).to eq([0, 1])
    end
  end

  describe 'Contains Duplicate' do
    it 'returns true if any value appears at least twice in the array' do
      expect(contains_duplicate([1, 2, 3, 1])).to eq(true)
      expect(contains_duplicate([1, 2, 3, 4])).to eq(false)
    end
  end

  describe 'Roman to Integer' do
    it 'returns the integer value of the roman numeral' do
      expect(roman_to_int('III')).to eq(3)
      expect(roman_to_int('IV')).to eq(4)
      expect(roman_to_int('IX')).to eq(9)
      expect(roman_to_int('LVIII')).to eq(58)
      expect(roman_to_int('MCMXCIV')).to eq(1994)
      expect(roman_to_int('MMXXI')).to eq(2021)
    end
  end
end

