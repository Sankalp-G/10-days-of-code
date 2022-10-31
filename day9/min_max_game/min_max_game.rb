# @param {Integer[]} nums
# @return {Integer}

# fairly self explanatory just runs the algorithm according to the question

def mutate_even_index(new_nums, nums)
  array.each_index do |i|
    new_nums[i] = [nums[2 * i], nums[(2 * i) + 1]].min if i.even?
  end
end

def mutate_odd_index(new_nums, nums)
  array.each_index do |i|
    new_nums[i] = [nums[2 * i], nums[(2 * i) + 1]].max if i.odd?
  end
end

def min_max_game(nums)
  until nums.length == 1
    n = nums.length
    new_nums = Array.new(n / 2)
    mutate_even_index(new_nums, nums)
    mutate_odd_index(new_nums, nums)
    nums = new_nums
  end
  nums
end
