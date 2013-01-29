class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
	# attr_protected :password

	has_many :started_projects, :foreign_key =>"started_by_id"
	has_many :completed_projects, :foreign_key =>"completed_by_id"

	def password=(new_password)
	 write_attribute(:password_hash, Digest::SHA1.hexdigest(new_password)) if new_password.present?
	end

	def password
	 ""
	end

end
