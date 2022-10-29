# This solution relies on the fact that y! is divisible by x! if the value of y >= x
# So for multiple numbers: m! + n! + o! would be divisible by x! if m, n, and o are less than or equal to x

# Now the above fails if there are factorials of the same number like:
# (4! + 4! + 4! + 4! + 4!) which is divisible by 5! even though 4 is less than 5
# In these cases we can try to combine lower order factorials into higher order factorials
# i.e. (4! + 4! + 4! + 4! + 4!) can be represented as 5(4!) which is 5! thus its clearly divisible by 5!

# If the lower order factorials cannot be combined and are less than divisor factorial then it is not divisible

# I'm applying the above method using by storing the frequency of each number in a hash (called count)
def factorial_divisibility?(divisor, num_array)
  # tally method creates a hash by frequency Eg: [1, 1, 2, 3, 3, 3, 3, 3] becomes {1=>2, 2=>1, 3=>5}
  count = num_array.tally
  count.default = 0

  # iterate up till the value of divisor any more is not needed
  divisor.times do |i|
    # if possible try to combine factorials and add to next order factorial
    if count[i] > i
      count[i + 1] += count[i] / (i + 1)
      count[i] %= (i + 1)
    end
    return false if count[i].positive? # return false if some factorial that cannot be combined still exists
  end
  true
end

# code for tests:

divisor = gets.chomp.split.last.to_i
num_arr = gets.chomp.split.map(&:to_i)

factorial_divisibility?(divisor, num_arr) ? (puts 'Yes') : (puts 'No')
