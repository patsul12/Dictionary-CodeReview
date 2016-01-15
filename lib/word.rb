class Word
  attr_accessor :name, :definitions
  attr_reader :id

  @@words = []

  def initialize(arguments)
    @name = arguments[:name]
    @definitions = []
    @id = @@words.length + 1
  end

  def save
    @@words << self
  end

  def delete
    @@words.delete(self)
  end

  def add_definition(definition)
    @definitions << definition
  end

  def remove_definition(definition)
    @definitions.delete(definition)
  end

  def self.clear
    @@words = []
  end

  def self.all
    @@words
  end

  def self.find(id)
    @@words.each do |word|
      if word.id == id
        return word
      end
    end
  end
end
