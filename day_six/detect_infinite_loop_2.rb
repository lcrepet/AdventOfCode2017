require_relative 'memory_area'
require_relative 'reallocator'

banks = ARGV.first.split(',').map(&:to_i)

memory_area = MemoryArea.new(banks)
reallocator = Reallocator.new(memory_area)

reallocator.run

puts "SIZE OF LOOP: #{memory_area.loop_size}"


