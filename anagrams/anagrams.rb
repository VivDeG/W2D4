# anagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

def first_anagram?(str1, str2)
  perm = str1.chars.permutation.to_a

  perm.each do |arr|
    perm_word = arr.join('')
    return true if str2 == perm_word
  end
  false
end

def second_anagram?(str1, str2)
  chars = str2.chars
  
  str1.each_char do |char|
    idx = chars.find_index(char)
    return false if idx.nil?
    chars.delete_at(idx)
  end

  return true if chars.empty?
end

def third_anagram?(str1, str2)
  arr1 = str1.chars.sort
  arr2 = str2.chars.sort

  arr1 == arr2
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  str2.each_char do |char|
    hash2[char] += 1
  end

  hash1 == hash2
end

def fourth_anagram_b?(str1, str2)
  hash = Hash.new { |h, k| h[k] = [0, 0] }

  str1.each_char do |char|
    hash[char][0] += 1
  end

  str2.each_char do |char|
    hash[char][1] += 1
  end

  hash.values.all? { |count| count.first == count.last }
end