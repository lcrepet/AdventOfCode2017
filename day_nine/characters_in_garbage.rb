require_relative 'stream'

input = ARGV.first

stream = Stream.new(input)
count = stream.number_of_characters_in_garbage

puts "NUMBER OF CHARACTERS IN GARBAGE: #{count}"

