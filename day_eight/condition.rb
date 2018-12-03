class Condition
  attr_reader :register_name

  def initialize(register_name, comparison_operator, comparing_value)
    @register_name = register_name
    @comparison_operator = comparison_operator
    @comparing_value = comparing_value
  end

  def is_true_for?(register)
    register.value.send(@comparison_operator, @comparing_value)
  end
end
