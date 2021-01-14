class Monkey
  attr_reader :name, :type

  def initialize(setup)
    # @name = [name]
    # @type = [type]
    # @food = [food]
    # @name = name
    # @type = type
    # @food = food
    @name = setup[0]
    @type = setup[1]
    @food = setup[2]
  end

  def favorite_food
    @food
  end

end
