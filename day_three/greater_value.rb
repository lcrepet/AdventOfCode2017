require_relative 'spiral_matrix'

max_value = ARGV.first.to_i

spiral_matrix = SpiralMatrix.new
spiral_matrix.build(max_value)

puts "FIRST GREATER VALUE: #{spiral_matrix.current_cell_value}"

