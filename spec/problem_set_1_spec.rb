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
end