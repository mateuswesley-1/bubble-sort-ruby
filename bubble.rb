require 'pry-byebug'

numbers = Array.new(10) { rand(1...500) }

def bubble_sort(array)

  for j in ((array.length-1)..1).step(-1)
    for i in 0...j
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array

end

p "Before: #{numbers}"
p "Sorted: #{bubble_sort(numbers)}"
