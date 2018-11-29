captcha = ARGV.first

digits = captcha.split('')
digits_count = digits.count

solution = 0.upto(digits_count - 1).sum do |digit_index|
  halfway_arround_digit_index = (digit_index + digits_count/2) % digits_count
  digits[digit_index] == digits[halfway_arround_digit_index] ? digits[digit_index].to_i : 0
end

puts "SOLUTION: #{solution}"

