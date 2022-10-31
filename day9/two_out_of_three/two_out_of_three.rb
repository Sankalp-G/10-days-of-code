# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}

# We can solve this by using set theory
# find the intersections for every two arrays
# combine the intersections and print the unique/distinct value
def two_out_of_three(nums1, nums2, nums3)
  inter1 = nums1.intersection(nums2)
  inter2 = nums2.intersection(nums3)
  inter3 = nums3.intersection(nums1)

  (inter1 + inter2 + inter3).uniq
end
