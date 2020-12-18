class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def sound
    p "meow"
  end
end
