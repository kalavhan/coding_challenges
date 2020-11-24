def rotateLeft(d, arr)
  tempArray = Array.new(arr.length)
  while d > (arr.length - 1) do
    d = d - arr.length
  end
  arr.each_index do |index|
    tempArray[index - d] = arr[index] 
  end
  tempArray
end

d = 4

arr = [1, 2, 3, 4, 5]

result = rotateLeft d, arr

p result