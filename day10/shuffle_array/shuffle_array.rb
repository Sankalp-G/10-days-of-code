# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}

# creates a 2d array (result) in which each element at index i is [xi, yi]
# Eg: for a given nums array [1, 3, 5, 2, 4, 6] you would get [[1, 2], [3, 4], [5, 6]]
# then flatten collapses the 2d array into a 1d array Eg:     [1, 2, 3, 4, 5, 6]
def shuffle(nums, n)
  result = []
  n.times do |i|
    result << [nums[i], nums[i + n]]
  end
  result.flatten
end

# the above algorithm was inspired by the ruby zip method
# which essentially does same exact thing as above
def zip_shuffle(nums, n)
  nums[0..n - 1].zip(nums[n..]).flatten
end
