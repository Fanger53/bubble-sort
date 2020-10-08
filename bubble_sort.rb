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
  array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
