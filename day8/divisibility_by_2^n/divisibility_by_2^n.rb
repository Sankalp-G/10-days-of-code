# finds the amount of factors of 2 in given number
def factors_of_two(num)
  res = 0
  until num.odd?
    res += 1
    num /= 2
  end
  res
end

def solve(n, num_array)
  number_of_twos = 0

  # count the number of factors of two in all given numbers
  num_array.each do |num|
    number_of_twos += factors_of_two(num)
    return 0 if number_of_twos >= n # return if there's enough
  end

  # create a sorted array of amount of factors for each index
  index_factors = (1..num_array.length).map { |num| factors_of_two(num) }
  index_factors.sort!

  indexes_modified = 0
  # iterate from the end of the array so highest value factors are added first
  index_factors.reverse_each do |factors|
    number_of_twos += factors
    indexes_modified += 1
    # return the amount of indexes that need to be modified
    return indexes_modified if number_of_twos >= n
  end

  -1
end

# code for tests:

number_of_tests = gets.chomp.to_i

number_of_tests.times do
  n = gets.chomp.to_i
  num_array = gets.chomp.split.map(&:to_i)

  puts solve(n, num_array)
end
