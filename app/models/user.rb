class User < ApplicationRecord
	has_many :orders

	validates :email, presence: true, uniqueness: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

	#enum status: {'admin': 0, 'owner': 1, 'worker': 3}

	scope :admins, -> { where(type: 'AdminUser') }
	scope :owners, -> { where(type: 'OwnerUser') }
	scope :stuff_user, -> { where(type: 'StuffUser') }

	def admin?
		type == 'AdminUser'
	end

	def owner?
		type == 'OwnerUser'
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
		return super if super
		token!
	end

	def token!
		self.token = "#{id}:#{JsonWebToken.encode(random: generate_token, user_id: id, email: email, type: type)}"
		save
		token
	end

	private

	def generate_token
		SecureRandom.hex(10)
	end

end
