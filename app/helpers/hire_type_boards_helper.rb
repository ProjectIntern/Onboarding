module HireTypeBoardsHelper

	def get_messages_of_type(hire_type_name)
		@type_messages = Message.all.where(["hire_type = ?", hire_type_name]).order("created_at DESC")
	end
end
