def two_sum(nums, target)
    # Hashmap!
    seen = {}
    nums.each_with_index do |num, i|
        complement = target - num
        if seen.key?(complement)
            return [seen[complement], i]
        end
        seen[num] = i
    end
end

p two_sum([2, 7, 11, 15], 9) # [0, 1]
p two_sum([3, 2, 4], 6) # [1, 2]
p two_sum([3, 3], 6) # [0, 1]