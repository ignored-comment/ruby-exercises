class Werewolf
  attr_reader :name, :location, :human, :hungry

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = true
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    @human = !human
    @hungry = true if self.wolf?
  end

  def wolf?
    !human
  end

  def hungry?
    hungry
  end

  def eat(victim)
    if self.wolf?
    victim.status = :dead
    elsif human == true
      "Yuck. I'm not a cannibal."
    end
  end
end
