# rolling_buffer_1 will mutate buffer
# ok to mutate buffer

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# rolling_buffer_2 will not mutate input_array
# will maintain input_array pristine

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
