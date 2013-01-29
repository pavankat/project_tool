class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_hash
	has_many :started_projects, :foreign_key =>"started_by_id"
	has_many :completed_projects, :foreign_key =>"completed_by_id"
end
