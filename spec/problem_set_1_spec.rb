require 'problem_set_1'

RSpec.describe 'Problem Set 1' do
  describe 'problem 1' do
    it 'returns true if words are anagrams' do
      expect(anagram?('cinema', 'iceman')).to eq(true)
    end
  end
end