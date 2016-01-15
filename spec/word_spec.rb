require 'rspec'
require 'word'

describe Word do
  before do
    Word.clear
  end

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

  describe '#remove' do
    it 'removes a word from the class' do
      test_word = create_word
      test_word.save
      test_word.delete
      expect(Word.all).to(eq([]))
    end
  end
end

def create_word
  Word.new({:name => 'pickle'})
end
