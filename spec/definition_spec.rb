require 'rspec'
require 'definition'

describe Definition do
  describe '#initialize' do
    it 'has a term upon initializtion' do
      expect(create_def.term).to(eq('an article of food that has been preserved in brine or in vinegar'))
    end
  end
end

def create_def
  Definition.new({:term => 'an article of food that has been preserved in brine or in vinegar'})
end
