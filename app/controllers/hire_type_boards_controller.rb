class HireTypeBoardsController < ApplicationController
  before_action :set_hire_type_board, only: [:show, :edit, :update, :destroy]

  # GET /hire_type_boards
  # GET /hire_type_boards.json
  def index
    @hire_type_boards = HireTypeBoard.all
    @hire_type_board = HireTypeBoard.new
  end

  # GET /hire_type_boards/1
  # GET /hire_type_boards/1.json
  def show
    @hire_type = HireTypeBoard.find(params[:id])
  end

  # GET /hire_type_boards/new
  def new
    @hire_type_board = HireTypeBoard.new
  end

  # GET /hire_type_boards/1/edit
  def edit
  end

  # POST /hire_type_boards
  # POST /hire_type_boards.json
  def create
    @hire_type_board = HireTypeBoard.new(hire_type_board_params)
    if @hire_type_board.save
      redirect_to :back
    end
  end



  # DELETE /hire_type_boards/1
  # DELETE /hire_type_boards/1.json
  def destroy
    @hire_type_board.destroy
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hire_type_board
      @hire_type_board = HireTypeBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hire_type_board_params
      params.require(:hire_type_board).permit(:name, :user_id)
    end
end
