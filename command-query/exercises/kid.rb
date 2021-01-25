class Kid
  attr_reader :grams_of_sugar_eaten

  def initialize
    @grams_of_sugar_eaten = 0
    @hyperactive = false
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
  end

  def hyperactive?
    if @grams_of_sugar_eaten >= 60
      @hyperactive = true
    end
    @hyperactive
  end
end
