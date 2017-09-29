# sum can not go below 0 
# array must be stored


def kadane(arr)
  sum = 0 
  master_array = [[0]]
  sub_array = []
  answer = 0 
  
  arr.each do |i|
    # sum of subarray plus new number -symbolizing the new array
    potential_sum = i + sum
    if potential_sum > 0 && potential_sum > add_arr(master_array[0])
      # sum of 
      sub_array << i

      # is this subarray grater than the one already in the master
      master_array[0] = sub_array
      sum = potential_sum
      answer = potential_sum

      p master_array
      p sum
      p sub_array
      p answer
    else
      sum = 0
      sub_array = []
    end
  end
  p master_array[0]
  p answer
end

def add_arr(arr)
  sum = 0
  arr.each { |i| sum += i }
  return sum
end

list = [1, 3, -2, 5, 7, -6, 1, 4, 11, -23]

kadane(list)