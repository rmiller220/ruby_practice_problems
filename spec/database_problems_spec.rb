require 'database_problems'

RSpec.describe 'Database Problems' do
  describe 'combining two tables' do
    it 'returns name of person and city' do
      expect(combining_two_tables).to eq([["Allen", "Wang", nil, nil], ["Bob", "Alice", "New York City", "New York"]])
    end
  end
end