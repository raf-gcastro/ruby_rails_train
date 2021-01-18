array = Array.new

array.push(gets.chomp.to_i)
array.push(gets.chomp.to_i)
array.push(gets.chomp.to_i)

array.map do |a|
	puts a ** 2
end
