class Centaur
  attr_reader :name, :breed, :cranky, :standing, :rested, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @counting = 0
    @laying = false
    @rested = true
    @sick = false
  end

  def shoot
    if cranky? || laying? == true
      "NO!"
    else
      @counting += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying? == true
      "NO!"
    else
      @counting += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @cranky = true if @counting == 3
    @rested = false if @counting == 3
    cranky
  end

  def standing?
    standing
  end

  def sleep
    if standing == true
      "NO!"
    elsif @laying == true
      @cranky = false
      @counting = 0
      @rested = true
    end
  end

  def laying?
    standing == false
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @laying == true && @standing == false
      "NO!!"
    elsif @rested == true
      @sick = true
    else
      @cranky = false
      @counting = 0
    end
  end

end
