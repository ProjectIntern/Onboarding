class HireTypeController < ApplicationController

	def index
		@hire_types = HireType.all
	end

	def new
		@hire_type = HireType.new
	end

	def create
		@hire_type = HireType.new(hire_type_params)
	end

	

	private
		def hire_type_params
			params.require(:hire_type).permit(:name)
		end
		

end
