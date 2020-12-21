class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @casted_number = 0
    @rest = true
  end

  def bearded?
    @bearded
  end

  def incantation(incant)
    "sudo #{incant}"
  end

  def rested?
    @rest
  end

  def cast
    @casted_number += 1
    if @casted_number > 2
      @rest = false
      "MAGIC MISSILE!"
    elsif @casted_number < 2
      "MAGIC MISSILE!"
    end
  end
end
