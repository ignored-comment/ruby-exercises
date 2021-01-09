class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def empty?
    @statues.empty?
  end

  def stare(victim)
    statues << victim
    victim.stoned = true
    statues.shift if statues.length > 3
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end
end
