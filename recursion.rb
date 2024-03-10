# def fibs(n)
#   fib_sequence = [0, 1]
#   return [fib_sequence[0]] if n < 2

#   for i in 1..n
#     fib_sequence << fib_sequence[i - 1] + fib_sequence[i]
#   end

#   fib_sequence
# end

# def fibs_rec(n, result = [0, 1])
#   if n == 0
#     return []
#   elsif n == 1
#     return [0]
#   else
#     result << result[result.length - 1] + result[result.length - 2] unless result.length == n
#     fibs_rec(n, result) unless result.length == n
#   end
#   result
# end

# p fibs_rec(1)
# p fibs_rec(2)
# p fibs_rec(3)
# p fibs_rec(4)
# p fibs_rec(8)

#sort left half of numbers
#sort right half of number
#marge sorted halves

#divide the list to as even possible sublists

#copy array a to array b
#sort data from b into a

require 'pry-byebug'

def merge_sort(arr)
  left = []
  right = []

  arr.each_with_index do |num, i|
    if i < arr.length / 2
      left << num
    else
      right << num
    end
  end

  left = merge_sort(left) if left.length > 1
  right = merge_sort(right) if right.length > 1
  binding.pry
  return merge(left, right)
end

def merge(left = [], right = [])
  result = []

  while !left.empty? && !right.empty? do
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end

  while !left.empty? do
    result << left.shift
  end
  while !right.empty?
    result << right.shift
  end
  result
end

#p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])
