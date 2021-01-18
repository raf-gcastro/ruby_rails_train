hash = Hash.new

for i in 1..3
  key = gets.chomp
  value = gets.chomp

  hash[key] = value
end

hash.each do |key, value|
  puts "Key is #{key} and the value is #{value}"
end
