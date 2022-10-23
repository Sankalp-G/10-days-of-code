# wrap around the lights after the last green light
# Eg: rrgyyygyr becomes: yrrrgyyyg
def wrap_lights(light_string)
  array = light_string.chars
  last_index = array.rindex('g') + 1
  array.rotate!(last_index)
  array.join
end

# create sequences of lights other than green Eg: yrrrgyyyg becomes: [yrrr, yyy]
def light_sequences(light_string)
  light_string.split('g')
              .reject(&:empty?)
end

# find best time for current light in a sequence
# Eg: for light yellow in sequence yrrr it returns 4
def best_time(sequence, current_light)
  return nil if sequence.index(current_light).nil?

  sequence.length - sequence.index(current_light)
end

# finds the best time in an array of sequences
# Eg the sequences [yrrr, yyy] returns 4
# since yrrr has time 4 and yyy has time 3
def best_in_sequences(sequence_arr, current_light)
  times = sequence_arr.map { |sequence| best_time(sequence, current_light) }

  times.compact.max
end

# combines the above four methods
def best_from_string(light_string, current_light)
  return 0 if current_light == 'g'

  wrapped = wrap_lights(light_string)
  sequences = light_sequences(wrapped)
  best_in_sequences(sequences, current_light)
end

##### code for tests:

number_of_cases = gets.chomp.to_i

number_of_cases.times do
  current_light = gets.chomp.split[-1]
  light_string = gets.chomp
  puts best_from_string(light_string, current_light)
end
