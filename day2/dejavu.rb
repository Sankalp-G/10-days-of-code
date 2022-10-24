def palindrome?(string)
  string == string.reverse
end

# returns correct string if found else returns nil
def no_palindrome(string)
  # appending 'a' before or after a string is enough to break a palindrome
  return "a#{string}" unless palindrome?("a#{string}")
  return "#{string}a" unless palindrome?("#{string}a")

  nil
end

# prints output for test cases
def print_answer(string)
  answer = no_palindrome(string)

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
