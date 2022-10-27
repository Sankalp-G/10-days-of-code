# @param {Integer[][]} image
# @return {Integer[][]}

# map each row to its reverse
def flip(image)
  image.map(&:reverse)
end

# map each element using a ternary operator to 1 or 0
def invert(image)
  image.map do |row|
    row.map { |element| element.zero? ? 1 : 0 }
  end
end

def flip_and_invert_image(image)
  invert(flip(image))
end
