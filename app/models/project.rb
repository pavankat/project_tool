class Project < ActiveRecord::Base
  attr_accessible :completed_at, :completed_by_id, :name, :started_at, :started_by_id
  belongs_to :starter, :class_name =>"User", :foreign_key =>"started_by_id"
  # the Project model belongs to the User model.
  # I don't completely understand this, but I believe 
  # :starter is a type of user. The column in the 
  # Project column that relates to this type of 
  # user is the started_by_id column
 	belongs_to :completer, :class_name =>"User", :foreign_key =>"completed_by_id"
  # the Project model belongs to the User model.
  # I don't completely understand this, but I believe 
  # :completer is a type of user. The column in the 
  # Project column that relates to this type of 
  # user is the completed_by_id column

end
