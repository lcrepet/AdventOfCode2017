input = ARGV.first

matrix = input.split(';').map { |row| row.split(',') }


checksum = matrix.sum do |row|
  sorted_row = row.sort
  sorted_row.last.to_i - sorted_row.first.to_i
end

puts "CHECKSUM: #{checksum}"
