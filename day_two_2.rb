input = ARGV.first

matrix = input.split(';').map { |row| row.split(',').map(&:to_i) }
checksum = 0

matrix.each do |row|
  row[0..-2].each do |n|
    (row.index(n) + 1).upto(row.count - 1) do |i|
      max = [n, row[i]].max
      min = [n, row[i]].min

      if max % min == 0
        checksum += max / min
        break
      end
    end
  end
end

puts "CHECKSUM: #{checksum}"
