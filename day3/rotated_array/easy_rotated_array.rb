# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# ruby's built-in index search method works fine
# and is fast and efficient enough for this problem but is not O(log n)

# For an implementation without the index method look at the
# other rotated array file in this directory

def search(nums, target)
  answer = nums.index(target)

  return -1 if answer.nil?

  answer
end
