require 'json'
require 'stringio'

def hourglassSum(arr)
    tempArray = []
    arr.each_with_index do |x, i|
        break if i >= (arr.length - 2) 
        arrayLength = x.length
        x.each_index do |j|
            if j <= (arrayLength - 3)
                tempValue = x[j] + x[(j + 1)] + x[(j + 2)] + arr[(i + 1)][(j + 1)] + arr[(i + 2)][(j)] + arr[(i + 2)][(j + 1)] + arr[(i + 2)][(j + 2)]
                tempArray.push(tempValue)
            else
                break
            end
        end
    end
    tempArray.max
end

arr = [
  [-1, 1, -1, 0, 0, 0],
  [ 0,-1,  0, 0, 0, 0],
  [-1,-1, -1, 0, 0, 0],
  [ 0,-9,  2,-4,-4, 0],
  [-7, 0, 0, -2, 0, 0],
  [0, 0, -1, -2, -4, 0]
]
result = hourglassSum arr

p result