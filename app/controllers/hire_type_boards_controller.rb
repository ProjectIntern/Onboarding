class HireTypeBoardsController < ApplicationController
  before_action :set_hire_type_board, only: [:show, :edit, :update, :destroy]

  def index
    @hire_type_boards = HireTypeBoard.all.order("created_at desc")
    @hire_type_board = HireTypeBoard.new
  end

  def show
    @hire_type = HireTypeBoard.find(params[:id])
  end

  def new
    @hire_type_board = HireTypeBoard.new
  end

  def edit
  end

  def update
    if @hire_type_board.update(hire_type_board_params)
      redirect_to hire_type_board_path
    else
      render 'edit'
    end
  end

  def create
    @hire_type_board = HireTypeBoard.new(hire_type_board_params)
    if @hire_type_board.save
      redirect_to :back
    end
  end

  def destroy
    @hire_type_board.destroy
    redirect_to :back
  end

  private
    def set_hire_type_board
      @hire_type_board = HireTypeBoard.find(params[:id])
    end

    def hire_type_board_params
      params.require(:hire_type_board).permit(:name, :user_id, :user_name)
    end
end
