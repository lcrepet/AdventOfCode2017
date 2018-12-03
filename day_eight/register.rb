class Register
  attr_reader :name, :value

  def initialize(name)
    @name = name
    @value = 0
  end

  def inc(delta)
    @value += delta
  end

  def dec(delta)
    @value -= delta
  end
end
