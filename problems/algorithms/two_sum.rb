
def two_sum(array, target)
  hash = {}
  array.each do |arr|
    if hash[target - arr]
      return [hash[target - arr], array.index(arr)]
    else
      hash[arr] = array.index(arr)
    end
  end
  nil
end

arr1 = [11, 2, 7, 15]
p two_sum(arr1, 9)

arr2 = [3, 2, 5, 9, 4]
p two_sum(arr2, 6)

arr3 = [3, 3]
p two_sum(arr3, 6)
