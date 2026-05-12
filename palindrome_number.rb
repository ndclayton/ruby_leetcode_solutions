# This is the interview approach
# Just to show you know what two pointers are and how to use them
# I would never use this in production due to readability
def is_palindrome(x)
    return false if x < 0
    str = x.to_s
    left = 0
    right = str.length - 1

    while left < right
        return false if str[left] != str[right]
        left += 1
        right -= 1
    end
    true
end

# This is what I would use in production
# Easy to understand and read and it's still very fast
def is_palindrome_fancy(x)
    return false if x < 0
    x.to_s == x.to_s.reverse
end

def is_palindrome_advanced(x)
    # Negative numbers are never palindromes
    return false if x < 0
  
    # Numbers ending in 0 cannot be palindromes
    # unless the number itself is 0
    return false if x % 10 == 0 && x != 0
  
    reversed_half = 0
  
    # Build the reversed second half of the number
    while x > reversed_half
      digit = x % 10
      reversed_half = reversed_half * 10 + digit
      x /= 10
    end
  
    # Even digits:
    #   1221 -> x = 12, reversed_half = 12
    #
    # Odd digits:
    #   12321 -> x = 12, reversed_half = 123
    # Remove middle digit with /10
    x == reversed_half || x == reversed_half / 10
  end

puts "Two Pointer Approach:"
p is_palindrome(121) # true
p is_palindrome(-121) # false
p is_palindrome(10) # false

puts "Language Trick:"
p is_palindrome_fancy(121) # true
p is_palindrome_fancy(-121) # false
p is_palindrome_fancy(10) # false

puts "Advanced Approach:"
p is_palindrome_advanced(121) # true
p is_palindrome_advanced(-121) # false
p is_palindrome_advanced(10) # false