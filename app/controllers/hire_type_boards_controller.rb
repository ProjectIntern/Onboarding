class HireTypeBoardsController < ApplicationController
  before_action :set_hire_type_board, only: [:show, :edit, :update, :destroy]

  def index
    @hire_type_boards = HireTypeBoard.all
  end

  def show
  end

  def new
    @hire_type_board = HireTypeBoard.new
  end

  def create
    @hire_type_board = HireTypeBoard.new(hire_type_board_params)
  end

  private
    def set_hire_type_board
      @hire_type_board = HireTypeBoard.find(params[:id])
    end

    def hire_type_board_params
      params.require(:hire_type_board).permit(:name)
    end
end
