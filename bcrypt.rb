require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

module Crud
  require 'bcrypt'
  
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end


  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if (user_record[:username] && verify_hash_digest(user_record[:password]) == password)
        return user_record
      end
    end
    "Credentials were not correct."
  end
end

#new_users = create_secure_users(users)
#auth = authenticate_user("heisenberg","password5",users)
#puts auth
#new_password = create_hash_digest("password1")
#puts new_password == 'poassword2'
