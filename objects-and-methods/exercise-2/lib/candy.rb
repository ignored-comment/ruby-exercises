class Candy
  attr_reader :type, :sugar

  def initialize(name, sugar = 100)
    @type = name
    @sugar = sugar
  end
end
