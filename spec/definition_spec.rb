require 'rspec'
require 'definition'

describe Definition do
  describe '#initialize' do
    it 'has a term upon initializtion' do
      expect(create_def.term).to(eq('an article of food that has been preserved in brine or in vinegar'))
    end
  end

  describe '#term' do
    it 'allows for updating of a term' do
      test_def = create_def
      test_def.term = 'jk lol'
      expect(test_def.term).to(eq('jk lol'))
    end
  end
end

def create_def
  Definition.new({:term => 'an article of food that has been preserved in brine or in vinegar'})
end
