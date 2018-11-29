cell_value = ARGV.first.to_i

sqrt_cell_value = Math.sqrt(cell_value).ceil
cell_square = (sqrt_cell_value.even? ? sqrt_cell_value + 1 : sqrt_cell_value).floor
steps = cell_square / 2
square_side_size = cell_square - 1
round_path_start = cell_square*cell_square - 4 * square_side_size

loop do
  break if cell_value - round_path_start < square_side_size
  round_path_start += square_side_size
end

middle_of_side = round_path_start + square_side_size/2
steps += cell_value - middle_of_side

puts "NUMBER OF STEPS: #{steps}"
