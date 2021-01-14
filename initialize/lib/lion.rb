class Lion
  attr_reader :sound, :name
  def initialize(name: "Lionel", sound: "roar")
    @name = name
    @sound = sound
  end
end
