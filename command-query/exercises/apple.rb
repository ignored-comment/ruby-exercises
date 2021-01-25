class Apple

  def initialize
    @ripe = false
    @weeks_waited = 0
  end

  def ripe?
    @ripe = true if @weeks_waited == 3
    @ripe
  end

  def wait_a_week
    @weeks_waited += 1
  end
end
