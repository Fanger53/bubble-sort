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
  p array
end

def bubble_sort_by(array)
  repeats = (array.length - 1)
  loop do
    sorted = false
    repeats.times do |pos|
      if yield(array[pos], array[pos + 1]) >= 0
        array[pos], array[pos + 1] = array[pos + 1], array[pos]
        sorted = true
      end
    end
    break if sorted == false
  end
  p array
end

my_array = [1, 34, 6, 3, 54, 345, 56]
my_array_s = %w{hay hey hello wapp}

bubble_sort(my_array)
bubble_sort(my_array_s)

bubble_sort_by(%w{hi hello hey}) do |left,right|
  left.length - right.length
end