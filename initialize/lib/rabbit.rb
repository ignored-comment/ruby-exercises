class Rabbit
  attr_reader :name

  def initialize(name:, num_syllables:)
    @name =
      if num_syllables % 2 == 0
        name + " Rabbit"
      else
        name
      end
    @num_syllables = num_syllables
  end
end
