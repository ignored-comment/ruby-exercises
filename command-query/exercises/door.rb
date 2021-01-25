class Door

  def initialize
    @lock_status = true
  end

  def locked?
    @lock_status
  end

  def unlock
    @lock_status = !@lock_status
  end
end
