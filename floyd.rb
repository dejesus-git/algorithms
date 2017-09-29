def floyd(arr, edges)
  # v is number of nodes
  v = arr
  
  # distance is the two dimensional graph representation
  distance_array = create_distance_arr(arr)
  
  # # distance array initialize 0 in each node place
  distance_array = init_arr_matrix(distance_array)
  
  # add edges
  dist_array = add_edges(distance_array, edges)
  
  # for loop for updating edges
  dist_array.each_with_index do |val, node|
    dist_array.each_with_index do |val, row|
      dist_array.each_with_index do |val, unit|
        if dist_array[row][unit] > dist_array[row][node] + dist_array[node][unit]
          dist_array[row][unit] = dist_array[row][node] + dist_array[node][unit]
        end
      end
    end
  end
  
  return dist_array
end

def add_edges(arr, edge_arr)
  edge_arr.each do |i|
    arr[i[0]][i[1]] = i[2]
  end
  return arr
end

def init_arr_matrix(arr)
  # for each element set 0 in its own place as the distance to itself is 0 
  arr.each_with_index do |value, index|
    value[index] = 0
  end
end


def create_distance_arr(arr)
  encap_array = []
  # for every element in array input, create a new array and insert into bigger array
  # for creation of 2d array
  arr.each do |i|
    encap_array << Array.new(arr.count, Float::INFINITY)
  end
  
  return encap_array
end

arr = [1, 2, 3, 4]
edge_list = [
    [0, 1, 2],
    [0, 2, 1],
    [1, 2, 1],
    [2, 1, 1],
    [2, 3, 3],
    [3, 1, 2]
  ]

p floyd(arr, edge_list)