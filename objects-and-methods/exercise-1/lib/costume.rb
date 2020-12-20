class Costume
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def style
    name
  end
end
