# This problem can be solved by finding a pattern
# the first 24 numbers have the following corresponding sqrt floored value:
# {*1=>1, *2=>1, *3=>1, *4=>2, 5=>2, *6=>2, 7=>2, *8=>2, *9=>3, 10=>3, 11=>3, *12=>3, 13=>3, 14=>3, *15=>3, *16=>4, 17=>4, 18=>4, 19=>4, *20=>4, 21=>4, 22=>4, 23=>4, *24=>4}
# also I've marked each luxurious number with a star (*)
# you can observe that each sqrt has exactly 3 luxurious numbers associated with it
# also the each set of 3 luxurious numbers is evenly spaced i.e. its separated by a space of sqrt - 1
# thus using the above two points we can find the amount of luxurious numbers leading upto any given number

def lux_nums_upto(limit)
  return 0 if limit.zero?

  floor_sqrt = Integer.sqrt(limit)
  result = ((floor_sqrt - 1) * 3) # lux nums for sqrt before limit
  result + 1 + ((limit - (floor_sqrt**2)) / floor_sqrt) # lux nums for sqrt at limit
end

def lux_nums_in_range(left_limit, right_limit)
  lux_nums_upto(right_limit) - lux_nums_upto(left_limit - 1)
end

# code for tests:

num_of_cases = gets.chomp.to_i

num_of_cases.times do
  left_limit, right_limit = gets.chomp.split.map(&:to_i)

  puts lux_nums_in_range(left_limit, right_limit)
end
