
def two_sum(array, target)
  array.each_with_index do |i, indx_i|
    array.each_with_index do |j, indx_j|
      return [indx_i, indx_j] if indx_i != indx_j && i + j == target
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
