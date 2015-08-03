json.array!(@hire_type_boards) do |hire_type_board|
  json.extract! hire_type_board, :id, :name
  json.url hire_type_board_url(hire_type_board, format: :json)
end
