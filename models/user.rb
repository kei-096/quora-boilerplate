# require_relative '../db/config'

class User < ActiveRecord::Base

	validates :email, format: { with: /.+@.+\..+/}
	validates :email, uniqueness: true
	validates :password, length: {minimum: 6}
	has_many :questions
	has_many :answers
	has_secure_password
	# acts_as_voter

	def self.check_validity(user_email, user_password)

		user = User.find_by(email: user_email)

		if user && user.authenticate(user_password)
			return user
		else
			return false
		end
	end
end

