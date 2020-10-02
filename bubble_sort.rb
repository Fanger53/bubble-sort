def bubble_sort(array)
  repeats = (array.length - 1)
  loop do
    sorted = false
    repeats.times do |pos|
      if array[pos] > array[pos + 1]
        array[pos], array[pos + 1] = array[pos + 1], array[pos]
        sorted = true
      end
    end
    break if sorted == false
  end
  array
end

my_array = [1, 34, 6, 3, 54, 345, 56]
print bubble_sort(my_array)