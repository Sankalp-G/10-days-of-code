# This method works in the following steps:
# 1) sort array in ascending order
# 2) get the required amt of last elements (elements with the greatest value)
# 3) get the lowest of the last elements as required by the problem
def find_best_speed(amt, speed_arr)
  speed_arr.sort.last(amt)[0]
end

#### code for tests:
number_of_computers = gets.chomp.split[-1].to_i
computer_speeds = gets.chomp.split.map(&:to_i)

puts find_best_speed(number_of_computers, computer_speeds)
