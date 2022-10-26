# @param {Integer[]} nums
# @return {Integer}

####### This is the exact same method from day 3 rotated array problem #######

# Uses a method similar to binary sort to find the pivot point (O(log n))
# Compares the value of middle element with the rightmost element to find the pivot point
# This works because if the middle element is less than the rightmost element: the elements to the right
# of the middle element would be sorted, thus pivot would be on the left side and vice versa

# Due to the way the array is sorted the pivot point is also the min element hence you get the answer
def find_min_index(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    left = mid + 1 if nums[mid] > nums[right]
    right = mid    if nums[mid] < nums[right]
  end
  left
end

# use the index to get the actual element
def find_min(nums)
  index = find_min_index(nums)
  nums[index]
end
