def is_anagram(s, t)
    s.chars.tally == t.chars.tally
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)

    # If the strings are different lengths,
    # they cannot be anagrams
    return false unless s.length == t.length
  
    # Create a hash to store character counts
    # Example:
    # {
    #   "a" => 2,
    #   "b" => 1
    # }
    counts = Hash.new(0)
  
    # Count each character in the first string
    s.each_char do |char|
      counts[char] += 1
    end
  
    # Subtract counts using the second string
    t.each_char do |char|
  
      # Reduce the count for this character
      counts[char] -= 1
  
      # If count goes below zero,
      # t contains too many of this character
      return false if counts[char] < 0
    end
  
    # Verify every character count returned to zero
    counts.each_value do |count|
      return false if count != 0
    end
  
    # All counts matched perfectly
    true
  end
