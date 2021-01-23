class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter_ogre
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @knocked_out
  end
end


class Ogre
  attr_reader :home, :name, :encounter_counter, :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    human.encounter_ogre
    @encounter_counter += 1
    @swings += 1 if @encounter_counter % 3 == 0
    human.knocked_out = true if @swings % 6 == 0
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.knocked_out = false
  end
end
