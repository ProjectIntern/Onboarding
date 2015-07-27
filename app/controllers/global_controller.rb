class GlobalController < ApplicationController
	before_action :require_user, only:[:index] 

	def index 
    	@globals = Global.all
  	end

	def new
    	@global = Global.new
  	end

  	def create
  		@global = Global.new(global_params)
    end

    private
		def user_params
    		params.require(:global).permit(:first_name, :last_name, :email, :image, :position, :about)
  		end

end
