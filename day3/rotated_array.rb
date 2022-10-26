# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

##### Everything in this solution obeys O(log n) time constraints #####

# Uses a method similar to binary sort to find the pivot point (O(log n))
# Compares the value of middle element with the rightmost element to find the pivot point
# This works because if the middle element is less than the rightmost element: the elements to the right
# of the middle element would be sorted, thus pivot would be on the left side and vice versa
def find_pivot_point(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    left = mid + 1 if nums[mid] > nums[right]
    right = mid    if nums[mid] < nums[right]
  end
  left
end

# standard binary search algorithm
# Could have also used the inbuilt ruby #bsearch method ¯\_(ツ)_/¯
def binary_search(arr, element)
  left = 0
  right = arr.length - 1
  while left <= right
    mid_index = (left + right) / 2
    mid = arr[mid_index]

    return mid_index if mid == element

    left = mid_index + 1  if mid < element
    right = mid_index - 1 if mid > element
  end
  -1
end

# Splits the rotated array into two parts at the pivot point and runs binary search on each part
# This works since the elements to the left and right of the pivot are already sorted and work with binary search
# Returns the index if found otherwise returns -1
def find_in_rotated_arr(rotated_arr, element)
  pivot_index = find_pivot_point(rotated_arr)

  return binary_search(rotated_arr, element) if pivot_index.zero?

  right_side = rotated_arr.drop(pivot_index)
  right_searched = binary_search(right_side, element)
  return right_searched + pivot_index unless right_searched == -1

  left_side = rotated_arr.take(pivot_index)
  binary_search(left_side, element)
end

def search(nums, target)
  find_in_rotated_arr(nums, target)
end
