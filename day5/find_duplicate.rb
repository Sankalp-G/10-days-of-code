# @param {Integer[]} nums
# @return {Integer}

##### THIS SOLUTION IS WRONG SINCE THERE CAN BE MULTIPLE DUPLICATES #####

# sum of first n natural numbers using the usual formula
def sum_of_natural_numbers(n)
  n * (n + 1) / 2
end

# finds the duplicate by subtracting the sum of given nums array by the sum of first n natural numbers
# this works since the numbers in the array are in the range [1, n] and there are n + 1 elements
# so if there is a duplicated number it must be in addition to the first n natural numbers
# so by subtracting we can easily find the duplicate element
# This should be O(n) time complexity due to summation
def find_duplicate(nums)
  n = nums.length - 1

  nums.sum - sum_of_natural_numbers(n)
end
