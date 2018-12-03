require_relative 'instruction'
require_relative 'condition'

class Parser
  def parse_instruction(str)
    instruction_str, condition_str = str.split(' if ')
    condition = parse_condition(condition_str)
    register, operation, delta = instruction_str.split
    Instruction.new(register, operation, delta.to_i, condition)
  end

  def parse_condition(str)
    register, operator, value = str.split
    Condition.new(register, operator, value.to_i)
  end
end
