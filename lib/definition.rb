class Definition
  attr_accessor :term, :class, :pronunciation

  def initialize(arguments)
    @term = arguments[:term]
    @class = arguments[:class]
    @pronunciation = arguments[:pronunciation]
  end

end
