module Problems
  def min_operations(nums, k)
    nums.each { k ^= _1 }
    count = 0
    while k > 0 do
        count += (k & 1)
        k >>= 1
    end
    return count
  end
end