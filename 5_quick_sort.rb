require 'awesome_print'

def swap arr, i, j
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end

def get_partition arr, start, endd
  pivot = arr[endd]
  part_i = i = start
  while i <= endd - 1
    if arr[i] <= pivot
      swap(arr, i, part_i)
      part_i += 1
    end
    i += 1
  end
  swap(arr, part_i, endd)
  part_i
end

def sort arr, start, endd
  return arr if start >= endd
  pivot_i = get_partition(arr, start, endd)
  sort(arr, start, pivot_i - 1)
  sort(arr, pivot_i + 1, endd)
  arr
end

a = [1,5,3,8,5,2,4,3,4,6,4,3,4,6,5]
ap sort(a, 0, a.size - 1)
