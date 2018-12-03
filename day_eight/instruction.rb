require_relative 'condition'

class Instruction
  attr_reader :register_name, :condition

  def initialize(register_name, operation, delta, condition)
    @register_name = register_name
    @operation = operation
    @delta = delta
    @condition = condition
  end

  def run(register, register_condition)
    register.send(@operation, @delta) if @condition.is_true_for?(register_condition)
  end
end
