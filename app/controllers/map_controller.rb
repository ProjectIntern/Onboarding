class MapController < ApplicationController
  before_action :require_user, only: [:index, :show]
  
  def index
  end
end
