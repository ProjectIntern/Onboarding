class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :hire_type
end
