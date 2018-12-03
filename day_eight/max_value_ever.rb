require_relative 'parser'
require_relative 'register'

instructions_str = ARGV.first.split(";")
parser = Parser.new
instructions = instructions_str.map { |instruction_str| parser.parse_instruction(instruction_str) }

max_value = 0
registers = {}

instructions.each do |instruction|
  register = registers[instruction.register_name]
  unless register
    register = Register.new(instruction.register_name)
    registers[register.name] = register
  end

  condition_register = registers[instruction.condition.register_name]
  unless condition_register
    condition_register = Register.new(instruction.condition.register_name)
    registers[condition_register.name] = condition_register
  end

  instruction.run(register, condition_register)
  max_value = [max_value, register.value].max
end

puts "MAX VALUE: #{max_value}"

