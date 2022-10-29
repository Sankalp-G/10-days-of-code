# @param {Integer[]} nums
# @return {Integer}

# just iterates through the nums and adds to the result if length is even
# uses the digits method to return an array of digits from which you an get the length
def find_numbers(nums)
  result = 0
  nums.each do |num|
    result += 1 if num.digits.length.even?
  end
  result
end

# If I had to find the length without using the digits method
# I would either divide by 10 or use the right shift operator to count the digits
