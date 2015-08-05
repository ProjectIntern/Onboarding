class HireTypeBoardsController < ApplicationController
  before_action :set_hire_type_board, only: [:show, :edit, :update, :destroy]

  # GET /hire_type_boards
  # GET /hire_type_boards.json
  def index
    @hire_type_boards = HireTypeBoard.all
  end

  # GET /hire_type_boards/1
  # GET /hire_type_boards/1.json
  def show
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

    respond_to do |format|
      if @hire_type_board.save
        format.html { redirect_to @hire_type_board, notice: 'Hire type board was successfully created.' }
        format.json { render :show, status: :created, location: @hire_type_board }
      else
        format.html { render :new }
        format.json { render json: @hire_type_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hire_type_boards/1
  # PATCH/PUT /hire_type_boards/1.json
  def update
    respond_to do |format|
      if @hire_type_board.update(hire_type_board_params)
        format.html { redirect_to @hire_type_board, notice: 'Hire type board was successfully updated.' }
        format.json { render :show, status: :ok, location: @hire_type_board }
      else
        format.html { render :edit }
        format.json { render json: @hire_type_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hire_type_boards/1
  # DELETE /hire_type_boards/1.json
  def destroy
    @hire_type_board.destroy
    respond_to do |format|
      format.html { redirect_to hire_type_boards_url, notice: 'Hire type board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hire_type_board
      @hire_type_board = HireTypeBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hire_type_board_params
      params.require(:hire_type_board).permit(:name)
    end
end
