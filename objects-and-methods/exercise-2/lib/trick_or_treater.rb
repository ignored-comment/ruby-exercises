class TrickOrTreater
  attr_reader :style, :costume, :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    costume.style
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    eaten = bag.take(1)
    @sugar_level += eaten[0].sugar
  end
end


# Heavily referenced from
# https://github.com/helloeduardo/ruby-exercises/blob/master/objects-and-methods/exercise-2/lib/trick_or_treater.rb
# Thank you, helloeduardo.
