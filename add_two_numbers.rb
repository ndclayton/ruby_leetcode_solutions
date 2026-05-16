
def add_two_numbers(l1, l2)
    # define a dummy node to start the list
    dummy = ListNode.new(0)
    # define a current node to traverse the list
    current = dummy
    carry = 0
  
    while l1 || l2 || carry > 0
      sum = carry
  
      sum += l1.val if l1
      sum += l2.val if l2
  
      carry = sum / 10
      digit = sum % 10
  
      current.next = ListNode.new(digit)
      current = current.next
  
      l1 = l1.next if l1
      l2 = l2.next if l2
    end  
    dummy.next
  end