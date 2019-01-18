def bad_two_sum?(arr, target)
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      sum = arr[i] + arr[j]
      return true if sum == target
      j += 1
    end
    i += 1
  end
  false
end

def okay_two_sum?(arr, target)
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  
end