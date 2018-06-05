require 'awesome_print'

def sort arr
  return [] if !arr || arr.empty?
  n = arr.size
  i = 1
  while i <= n - 1
    temp = arr[i]
    hole = i
    while hole > 0 && arr[hole-1] > temp
      arr[hole] = arr[hole-1]
      hole -= 1
    end
    arr[hole] = temp
    i += 1
  end
  arr
end

a = [1,5,3,8,5,2,4,3,4,6,4,3,4,6,5]
ap sort(a)
