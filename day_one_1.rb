captcha = ARGV.first

digits = captcha.split('')
digits << digits.first

solution = 0.upto(digits.count - 2).sum do |digit_index|
  digits[digit_index] == digits[digit_index+1] ? digits[digit_index].to_i : 0
end


puts "SOLUTION: #{solution}"

