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

def bubble_sort_by
  array = yield if block_given?
  repeats = (array.length - 1)
  loop do
    sorted = false
    repeats.times do |pos|
      if (array[pos] <=> array[pos + 1]) == 1
        array[pos], array[pos + 1] = array[pos + 1], array[pos]
        sorted = true
      end
    end
  end
  p array
end

my_array = [1, 34, 6, 3, 54, 345, 56]
my_array_2 = ["hay", "hey", "hello", "wapp"]

print bubble_sort(my_array)
print bubble_sort(my_array_2)

bubble_sort_by { %w{1 54 2 34 76 32 6} }