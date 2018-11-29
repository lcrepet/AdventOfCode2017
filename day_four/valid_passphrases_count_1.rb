require_relative 'passphrase'

passphrases = ARGV.first.split(',').map { |phrase| Passphrase.new(phrase) }
valid_passphrases_count = passphrases.reject(&:has_duplicates?).count

puts "TOTAL NUMBER OF PASSPHRASES: #{passphrases.count}"
puts "NUMBER OF VALID PASSPHRASES: #{valid_passphrases_count}"
