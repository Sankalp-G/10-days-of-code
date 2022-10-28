
###### FAILS DUE TO TIME LIMIT ######

# this is a great way to do factorials in ruby
# uses reduce to just multiply all the numbers iteratively
def factorial(num)
  (1..num).reduce(:*)
end

# factorials each number and adds it to the sum
def factorial_sum(num_array)
  num_array.reduce(0) { |sum, num| sum + factorial(num) }
end

# checks if the sum of factorials is divisible by the divisor factorial
# returns true of false
def factorial_divisibility?(divisor, num_array)
  sum = factorial_sum(num_array)
  (sum % factorial(divisor)).zero?
end

# code for tests:

divisor = gets.chomp[-1].to_i
num_arr = gets.chomp.split.map(&:to_i)

factorial_divisibility?(divisor, num_arr) ? (puts 'Yes') : (puts 'No')
