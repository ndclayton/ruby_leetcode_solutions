require 'minitest/autorun'

def contains_duplicate_brute_force(nums)
  
    left = 0
    right = 1

    while left < nums.length
        right = left + 1
        while right < nums.length
            return true if nums[left] == nums[right]
            right += 1
        end
        left += 1
    end

    false
end

def contains_duplicate(nums)
    seen = Set.new
  
    nums.each do |num|
      return true if seen.include?(num)
      seen.add(num)
    end
  
    false
end

def contains_duplicate_with_length(nums)
    nums.uniq.length != nums.length
end

def contains_duplicate_with_size(nums)
    nums.uniq.size != nums.size
end