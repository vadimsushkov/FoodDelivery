class User < ApplicationRecord
	has_many :orders

	#enum status: {'admin': 0, 'owner': 1, 'worker': 3}

	scope :admins, -> { where(type: 'Admin') }
	scope :owners, -> { where(type: 'Owner') }
	scope :stuff_user, -> { where(type: 'StuffUser') }

	def admin?
		type == 'Admin'
	end

	def owner?
		type == 'Owner'
	end

	def stuff_user?
		type == 'StuffUser'
	end


	def password=(value)
		salt = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a).shuffle[0,8].join
		write_attribute(:password, "#{Digest::MD5.hexdigest("#{Digest::MD5.hexdigest(value)}:#{salt}")}:#{salt}")
	end

	def password_valid?(password_to_check)
		(hash, salt) = password.split(':')
		hash == Digest::MD5.hexdigest("#{Digest::MD5.hexdigest(password_to_check)}:#{salt}")
	end

	def token
		'Test'
	end

end
