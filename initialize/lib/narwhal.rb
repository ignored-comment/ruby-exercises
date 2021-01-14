class Narwhal
  attr_reader :name, :weight

  def initialize(cute:, weight:, name:)
    @cute = cute
    @weight = weight
    @name = name
  end

  def cute?
    @cute
  end
end
