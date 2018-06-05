require 'awesome_print'

def sort arr
  return [] if !arr || arr.empty?
  i = 0
  n = arr.size
  found = true
  while i <= n - 2 && found
    j = 0
    found = false
    while j <= n - i - 2
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
        found = true
      end
      j += 1
    end
    i += 1
  end
  arr
end

a = [1,5,3,8,5,2,4,3,4,6,4,3,4,6,5]
ap sort(a)
