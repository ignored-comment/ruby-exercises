class Parrot
    attr_reader :name, :known_words

    def initialize(name:, known_words:)
    @name = name
    @known_words = ["Sugar", "Flashy", "Giant", "Whisper"]
  end

  def sound
    "Squawk!"
  end

end
