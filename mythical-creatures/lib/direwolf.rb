class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  attr_accessor :hunts_white_walkers

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if @starks_to_protect.length < 2 && @home == stark.location
      @starks_to_protect << stark
      stark.safe = true
      @hunts_white_walkers = false
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(name)
    @starks_to_protect.delete(name)
    name.safe = false
    name
  end
end

class Stark
  attr_reader :name, :location
  attr_accessor :safe
  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    if @safe == true
      'The North Remembers'
    else
      'Winter is Coming'
    end
  end
end
