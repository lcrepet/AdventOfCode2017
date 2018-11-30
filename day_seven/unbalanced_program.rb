require_relative 'tower'
require_relative 'program'
require_relative 'parser'

parser = Parser.new
programs_hash = parser.parse(ARGV.first)
tower = Tower.new(parser.build_programs(programs_hash))
tower.build

unbalanced_program = tower.unbalanced_program
children_weights_counts = {}
unbalanced_program.children.each do |child|
  children_weights_counts[child.total_weight] ||= 0
  children_weights_counts[child.total_weight] += 1
end

abnormal_weight = children_weights_counts.sort_by { |_, value| value }.first.first
normal_weight = children_weights_counts.sort_by { |_, value| value }.last.first
abnormal_child = unbalanced_program.children.find { |child| child.total_weight == abnormal_weight }


puts "PROGRAM #{abnormal_child.name} SHOULD WEIGHT #{abnormal_child.weight + (normal_weight - abnormal_weight)}."
