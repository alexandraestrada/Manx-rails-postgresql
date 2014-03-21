class User < ActiveRecord::Base
	has_many :shopping_carts
	has_many :shopping_cart_items, through: :shopping_carts 
	has_many :items, through: :shopping_cart_items 

	before_save :hash_stuff

	attr_accessor :password

	def authenticated?(pwd)
		self.hashed_password ==
		BCrypt::Engine.hash_secret(pwd, self.salt)
	end

	private 

	def hash_stuff
		self.salt = BCrypt::Engine.generate_salt
		self.hashed_password =
		BCrypt::Engine.hash_secret(password, self.salt)
		self.password = nil 
	end 
end
