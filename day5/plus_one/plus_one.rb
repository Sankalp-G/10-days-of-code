# @param {Integer[]} digits
# @return {Integer[]}

# Iterate through array from right to left
# Increment value at current index by one,
# if value goes above 9 set current index to 0 and move on to next index
def plus_one(digits)
  n = digits.length - 1
  (0..n).reverse_each do |i|
    digits[i] += 1
    break unless digits[i] > 9

    digits[i] = 0
    digits.prepend(1) if i.zero? # prepend 1 if you get to index zero with carry
  end
  digits
end
