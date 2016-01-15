require 'rspec'
require 'word'
require 'definition'

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

  describe '#add_definition' do
    it 'adds a definition to the words definitions' do
      test_word = create_word
      test_def = create_def
      test_word.add_definition(test_def)
      expect(test_word.definitions).to(eq([test_def]))
    end
  end

  describe '#remove_definition' do
    it 'removes a definition from the words definitions' do
      test_word = create_word
      test_def = create_def
      test_word.add_definition(test_def)
      test_word.remove_definition(test_def)
      expect(test_word.definitions).to(eq([]))
    end
  end
end

def create_word
  Word.new({:name => 'pickle'})
end

def create_def
  Definition.new({:term => 'an article of food that has been preserved in brine or in vinegar'})
end
