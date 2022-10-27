# @param {Integer[]} nums
# @return {Integer}

###### FAILS DUE TO TIME CONSTRAINT ######

# just counts the amount of times each number occurs and returns the number if amount > 1
# time complexity O(n^2) since its basically a nested loop
# space complexity O(1)
def find_duplicate(nums)
  n = nums.length - 1
  (1..n).each do |i|
    return i if nums.count(i) > 1
  end
end

# This could also be done by sorting the array and finding adjacent elements and various other methods which will have-
# lower time complexity, but thats not allowed since sorting would require O(n) space complexity
# or modifying the given array, but thats not allowed according to the question.

# You can get the best time complexity O(n) by using the turtle and hare method and still have-
# constant space complexity, I haven't done that since that it's not a strict requirement.
