class RollCall
  attr_reader :names

  def initialize
    @names = []
  end

  def longest_name
    # had to rely on helloEduardo
    # will come back to this later to try
    # and understand
    # https://github.com/helloeduardo/ruby-exercises/blob/master/command-query/exercises/roll_call.rb
    names.max_by {|name| name.length}
  end

  def <<(name)
    @names << name
  end

end
