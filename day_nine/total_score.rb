require_relative 'stream'

input = ARGV.first

stream = Stream.new(input)
score = stream.score

puts "TOTAL SCORE: #{score}"

