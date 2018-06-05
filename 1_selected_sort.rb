require 'awesome_print'

def sort arr
  return [] if !arr || arr.empty?
  i = 0
  while i < arr.size - 1
    j = i + 1
    min_i = i
    while j < arr.size
      min_i = j if arr[j] < arr[min_i]
      j += 1
    end
    temp = arr[i]
    arr[i] = arr[min_i]
    arr[min_i] = temp
    i += 1
  end
  arr
end

a = [1,5,3,8,5,2,4,3,4,6,4,3,4,6,5]
ap sort(a)
