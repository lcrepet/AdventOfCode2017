require_relative 'tower'
require_relative 'program'
require_relative 'parser'

parser = Parser.new
programs_hash = parser.parse(ARGV.first)
tower = Tower.new(parser.build_programs(programs_hash))


puts "BOTTOM PROGRAM: #{tower.first_program.name}"
