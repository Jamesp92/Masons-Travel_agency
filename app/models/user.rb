class User < ApplicationRecord
  has_many :api_keys, as: :bearer
  has_many :reviews
  has_secure_password
  # attr_accessor :password
  # validates_confirmation_of :password
  # validates :user_name, :presence => true, :uniqueness => true
  # before_save :encrypt_password

  # def encrypt_password 
  #   self.password_salt = BCrypt::Engine.generate_salt
  #   self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  # end

  # def self.authenticate(user_name, password)
  #   user = User.find_by "user_name = ?", user_name
  #   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  #     user
  #   else
  #     nil
  #   end
  # end
end