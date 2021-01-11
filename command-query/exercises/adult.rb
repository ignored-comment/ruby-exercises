class Adult
  attr_reader :drinks

  def initialize
    @drinks = 0
  end

  def sober?
    @drinks < 3
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
  end
end

# Referenced with:
# https://github.com/helloeduardo/ruby-exercises/blob/master/command-query/exercises/adult.rb
