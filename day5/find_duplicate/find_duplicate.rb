# @param {Integer[]} nums
# @return {Integer}

#### I initially implemented this in a much simpler method (link in readme)
#### but that was fails due to the time limit :p

# Finds the duplicate using Floyd's Hare-tortoise algorithm (except mine uses turtles)
# we take each number in the array as a pointer to the index of another number in the array similar to a linked list
# so when there is a duplicate number it creates a loop from the pointers whose entrypoint would be the duplicate number
# so we can find the entry point by using the Hare-tortoise algorithm which will give use the duplicate number.
# time complexity O(n)
# space complexity O(1) as required by the problem
def find_duplicate(nums)
  turtle = nums[nums[0]]
  hare   = nums[nums[nums[0]]]

  # until hare and turtle intersect at some point in the loop
  until turtle == hare
    turtle = nums[turtle]     # move forward one pointer
    hare   = nums[nums[hare]] # moves forward two pointers
  end

  turtle = nums[0] # reset hare to the start
  # until they reach the entrance which is the duplicated number
  until turtle == hare
    turtle = nums[turtle] # moves forward one pointer
    hare   = nums[hare]   # moves forward one pointer
  end

  hare
end

# there are several easier ways to find duplicates (like sorting) but most of them are invalid due to-
# the question saying that space complexity must be constant and no modifying the original array

# one of the easier valid ways it to simply run a nested loop and either compare each num or-
# count each number to find the duplicate (O(n^2) time complexity) which is what I tried in previous
# attempts but sadly that fails due to time limit in one test case, maybe that's because ruby is kinda slow.
