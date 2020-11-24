def dynamicArray(n, queries)
  seq = Array.new(n){Array.new()}
  lastAnswer = 0
  res = []
  queries.each do |q|
      index = (q[1] ^ lastAnswer) % n
      if q[0] == 1
          seq[index].push(q[2])
      else
          position = q[2] % seq[index].length
          lastAnswer = seq[index][position]
          res.push(lastAnswer)
      end
  end
  res
end

x = 6
y = [
  [1, 0, 5],
  [1, 1, 7],
  [1, 0, 3],
  [2, 1, 0],
  [2, 1, 1]
]

result = dynamicArray x, y

p result