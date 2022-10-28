# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.

# rotate the array simply by using the in-built ruby rotate method
def easy_rotate(nums, k)
  nums.rotate!(-k)
end

# uses a duplicated nums array to assign values to the original nums array
# uses modulus to wrap index to the start of the array
# O(n) time complexity
# O(n) space complexity
def rotate(nums, k)
  nums.dup.each_with_index do |num, index|
    new_index = (index + k) % nums.length
    nums[new_index] = num
  end
  nums
end
