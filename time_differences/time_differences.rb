require 'byebug'

def my_min(array)
  min = 0
  i = 0
  while i < array.length
    j = 0
    while j < array.length
      if array[i] < array[j] && array[i] < min
        min = array[i]
      elsif array[j] < array[i] && array[j] < min
        min = array[j]
      end
      j += 1
    end
    i += 1
  end
  min
end

def my_min2(array)
  min = array[0]
  i = 0
  while i < array.length
    if array[i] < min
      min = array[i]
    end
    i += 1
  end
  min
end

def sub_sum(array)
  sub_sets = []

  i = 0
  while i < array.length
  j = i
    while j < array.length
        sub_sets << array[i..j]
      j += 1
    end
    i += 1
  end

  largest_sum = sub_sets.first.reduce(&:+)
  sub_sets.each do |arr|
    sum = arr.reduce(&:+)
    largest_sum = sum if sum > largest_sum
  end

  largest_sum
end

def sub_sum2(array)
  curr_sum = array[0]
  largest_sum = array[0]

  i = 1
  while i < array.length
    curr_sum += array[i]
    if array[i] > largest_sum
      largest_sum = array[i]
    elsif curr_sum > largest_sum
      largest_sum = curr_sum
    elsif curr_sum < 0
      curr_sum = 0
    end
    i += 1
  end
  largest_sum
end