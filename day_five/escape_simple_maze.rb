require_relative 'simple_maze'
require_relative 'escaper'

jump_offsets_list = ARGV.first.split.map(&:to_i)

maze = SimpleMaze.new(jump_offsets_list)
escaper = Escaper.new(maze)

escaper.escape

puts "NUMBER OF STEPS: #{escaper.number_of_steps}"
