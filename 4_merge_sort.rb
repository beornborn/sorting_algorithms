require 'awesome_print'

def sort arr
  n = arr.size
  return arr if n <= 1
  left = arr[0..n/2-1]
  right = arr[n/2..-1]
  sl = sort(left)
  sr = sort(right)
  cl = cr = cm = 0

  while cm <= n - 1
    break if cl > sl.size - 1 || cr > sr.size - 1
    if sl[cl] < sr[cr]
      arr[cm] = sl[cl]
      cl += 1
    else
      arr[cm] = sr[cr]
      cr += 1
    end
    cm += 1
  end

  if cl > sl.size - 1
    arr[cm..-1] = sr[cr..-1]
  else cr > sr.size - 1
    arr[cm..-1] = sl[cl..-1]
  end

  arr
end

a = [1,5,3,8,5,2,4,3,4,6,4,3,4,6,5]
ap sort(a)
