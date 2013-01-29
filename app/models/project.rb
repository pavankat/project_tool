class Project < ActiveRecord::Base
  attr_accessible :completed_at, :completed_by_id, :name, :started_at, :started_by_id
  belongs_to :starter, :class_name =>"User", :foreign_key =>"started_by_id"
 	belongs_to :completer, :class_name =>"User", :foreign_key =>"completed_by_id"
end
