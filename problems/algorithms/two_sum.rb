
# def two_sum(array, target)
#   hash = {}
#   array.each do |arr|
#     if hash[target - arr]
#       return [hash[target - arr], array.index(arr)]
#     else
#       hash[arr] = array.index(arr)
#     end
#   end
#   nil
# end

# def two_sum(array, target)
#   hash = {}

#   (0...array.size).each do |i|
#     if hash[target - array[i]]
#       return [hash[target - array[i]], i]
#     else
#       hash[array[i]] = i
#     end
#   end
#   nil
# end

def two_sum(array, target)
  hash = {}
  i = 0

  while i < array.length do
    if hash[target - array[i]]
      return [hash[target - array[i]], i]
    else
      hash[array[i]] = i
    end
    i += 1
  end
end

arr1 = [11, 2, 7, 15]
p two_sum(arr1, 26)

arr2 = [3, 2, 5, 9, 4]
p two_sum(arr2, 6)

arr3 = [3, 3]
p two_sum(arr3, 6)
