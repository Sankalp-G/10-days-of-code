# @param {Integer[]} nums
# @return {Integer}

########## FAILS DUE TO ARRAY SIZE LIMITATION ###########

# Uses a cyclic sort algorithm to sort the numbers in the original array O(n) time and O(1) space complexity
# Cyclic sort works by swapping a number in the array with the index of its value
# For example 2 would got to the second index
# This continues on until all the numbers in the array are at their own index
def cyclic_sort(arr)
  arr.delete_if(&:negative?) # remove negative numbers since they aren't needed

  (0..arr.size - 1).each do |index|
    while arr[index] != index && !arr[index].nil?
      value = arr[index]
      arr[value], arr[index] = arr[index], arr[value] # swap
    end
  end
  arr
end

# finds the first missing positive number from a cyclic sorted array
# just finds the first positive index that doesn't match its value
def find_missing(arr)
  (1..arr.size).each do |index|
    return index if index != arr[index]
  end
end

### Test code:

def first_missing_positive(nums)
  sorted = cyclic_sort(nums)
  find_missing(sorted)
end
