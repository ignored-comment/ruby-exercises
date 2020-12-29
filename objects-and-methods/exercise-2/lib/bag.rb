class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def candies
    @candies
  end

  def <<(candy)
    candies << candy
  end

  def contains?(type)
    candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(candy_name)
    candy_in_hand = candies.find do |candy|
      candy.type == candy_name
    end
    candies.delete(candy_in_hand)
  end

  def take(number)
    taken = []
    number.times do
      taken << candies.shift
    end
    taken
  end

end
