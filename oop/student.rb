require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :password
  attr_reader :username

  def initialize(fisrt_name, last_name, email, username, password)  
    @first_name = fisrt_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
    puts "Email: #{@email}"
    puts "Username: #{@username}"
    puts "Password: #{@password}"
  end

end

student = Student.new("Rafael", "Gomes de Castro", "rafael.castro@acras.com.br", "rgcastro", "teste123")

puts student

hashed_password = student.create_hash_digest(student.password)
puts hashed_password
