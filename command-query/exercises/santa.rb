class Santa

  def initialize
    @fits = true
    @cookie_counter = 0
  end

  def fits?
    @fits
  end

  def eats_cookies
    @cookie_counter += 1
    if @cookie_counter >= 3
      @fits = false
    end
  end
end
