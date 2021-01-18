numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

max = 0

max_key = numbers.select do |key, value|
  if value > max
      max = value
  end
end

puts max_key.keys[-1]
