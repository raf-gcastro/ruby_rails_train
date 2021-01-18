def multiply (first_num, second_num)
  first_num.to_f * second_num.to_f
end

def division (first_num, second_num)
  first_num.to_f / second_num.to_f
end

def sum (first_num, second_num)
  first_num.to_f + second_num.to_f
end

def subtraction (first_num, second_num)
  first_num.to_f - second_num.to_f
end

def mod (first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple Calculator"
25.times {print '-'}
puts

puts "Enter the first number: "
a = gets.chomp.to_i
puts "Enter the seccond number: "
b = gets.chomp.to_i
puts "Enter the operation number: "
puts "1 - Multiply"
puts "2 - Division"
puts "3 - Sum"
puts "4 - Subtraction"
puts "5 - Modulus"
option = gets.chomp

if (option == "1")
 puts "The multiplication is: "
 puts multiply(a,b)
elsif (option == "2")
 puts "The division is: "
 puts division(a,b)
elsif (option == "3")
 puts "The sum is: "
 puts sum(a,b)
elsif (option == "4")
 puts "The subtraction is: "
 puts subtraction(a,b)
elsif (option == "5")
 puts "The module is: "
 puts mod(a,b)
else
 puts "No operation selected!"
end
