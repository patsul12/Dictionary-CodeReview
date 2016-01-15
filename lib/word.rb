require "pry"

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

  def self.clear
    @@words = []
  end

  def self.all
    @@words
  end
end
