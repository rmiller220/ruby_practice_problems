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
end