require 'test_helper'

class HireTypeBoardsControllerTest < ActionController::TestCase
  setup do
    @hire_type_board = hire_type_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hire_type_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hire_type_board" do
    assert_difference('HireTypeBoard.count') do
      post :create, hire_type_board: { name: @hire_type_board.name }
    end

    assert_redirected_to hire_type_board_path(assigns(:hire_type_board))
  end

  test "should show hire_type_board" do
    get :show, id: @hire_type_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hire_type_board
    assert_response :success
  end

  test "should update hire_type_board" do
    patch :update, id: @hire_type_board, hire_type_board: { name: @hire_type_board.name }
    assert_redirected_to hire_type_board_path(assigns(:hire_type_board))
  end

  test "should destroy hire_type_board" do
    assert_difference('HireTypeBoard.count', -1) do
      delete :destroy, id: @hire_type_board
    end

    assert_redirected_to hire_type_boards_path
  end
end
