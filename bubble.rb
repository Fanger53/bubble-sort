def bubble_sort(unsorted_array)
  n = unsorted_array.length
  i = 1
  dummy_flag = true
  while dummy_flag

    dummy_flag = false
    while i < n

      if unsorted_array[i - 1] > unsorted_array[i]

        temp = unsorted_array[i - 1]
        unsorted_array[i - 1] = unsorted_array[i]
        unsorted_array[i] = temp

        dummy_flag = true

      end
      i += 1

    end
    i = 1
    n -= 1
  end
  unsorted_array
end

def bubble_sort_by(unsorted_array)
  n = unsorted_array.length
  i = 1
  dummy_flag = true

  while dummy_flag

    dummy_flag = false
    while i < n

      block_returned_value = yield unsorted_array[i - 1], unsorted_array[i]

      if block_returned_value.positive?

        temp = unsorted_array[i - 1]
        unsorted_array[i - 1] = unsorted_array[i]
        unsorted_array[i] = temp
        dummy_flag = true

      end

      i += 1

    end
    i = 1

    n -= 1
  end

  pp unsorted_array
end

array_x = [9, 3, 2, 1, 8, 4, 6, 1]
pp bubble_sort(array_x)

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end