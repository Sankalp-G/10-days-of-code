
# THIS CODE FAILS DUE TO TIME CONSTRAINTS

def palindrome?(string)
  string == string.reverse
end

# loops through string to find a position where 'a' can be inserted and not be a palindrome
# returns correct string if found else returns nil
def insert_no_palindrome(string)
  string.length.times do |i|
    new_str = string.dup
    new_str.insert(i, 'a')
    return new_str unless palindrome?(new_str)
  end
  nil
end

# prints output for test cases
def print_answer(string)
  answer = insert_no_palindrome(string)

  return puts 'NO' if answer.nil?

  puts 'YES'
  puts answer
end

#### code for tests:

number_of_cases = gets.chomp.to_i

number_of_cases.times do
  string = gets.chomp
  print_answer(string)
end
