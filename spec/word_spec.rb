require 'rspec'
require 'word'

describe Word do
  describe '#initialize' do
    it 'is empty upon initialization' do
      test_word = create_word
      expect(test_word.definitions).to(eq([]))
    end
  end

  describe '#save' do
    it 'saves a word to the class' do
      test_word = create_word
      test_word.save
      expect(Word.all).to(eq([test_word]))
    end
  end
end

def create_word
  Word.new({:name => 'pickle'})
end
