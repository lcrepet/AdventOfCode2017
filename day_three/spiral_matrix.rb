class SpiralMatrix
  def initialize
    @matrix = {}
    @matrix[[0, 0]] = 1
    @matrix[[1, 0]] = 1

    @cursor_i = 1
    @cursor_j = 0

    @current_direction = :right
  end

  def current_cell_value
    @matrix[[@cursor_i, @cursor_j]]
  end

  def build(max_value)
    loop do
      next_i, next_j = try_turn_left

      turn_left unless @matrix[[next_i, next_j]]
      move

      compute_current_cell_value

      break if current_cell_value > max_value
    end
  end

  private

  def compute_current_cell_value
    cell_value = 0

    cell_value += @matrix[[@cursor_i, @cursor_j+1]] || 0
    cell_value += @matrix[[@cursor_i, @cursor_j-1]] || 0
    cell_value += @matrix[[@cursor_i+1, @cursor_j]] || 0
    cell_value += @matrix[[@cursor_i-1, @cursor_j]] || 0
    cell_value += @matrix[[@cursor_i+1, @cursor_j+1]] || 0
    cell_value += @matrix[[@cursor_i-1, @cursor_j+1]] || 0
    cell_value += @matrix[[@cursor_i-1, @cursor_j-1]] || 0
    cell_value += @matrix[[@cursor_i+1, @cursor_j-1]] || 0

    @matrix[[@cursor_i, @cursor_j]] = cell_value
  end

  def turn_left
    @current_direction = turn_left_directions[@current_direction]
  end

  def move
    di, dj = directions_steps[@current_direction]

    @cursor_i = @cursor_i + di
    @cursor_j = @cursor_j + dj
  end

  def try_turn_left
    new_direction = turn_left_directions[@current_direction]
    di, dj = directions_steps[new_direction]

    next_i = @cursor_i + di
    next_j = @cursor_j + dj

    [next_i, next_j]
  end

  def turn_left_directions
    {
      up: :left,
      left: :down,
      down: :right,
      right: :up
    }
  end

  def directions_steps
    {
      up: [0, 1],
      down: [0, -1],
      right: [1, 0],
      left: [-1, 0]
    }
  end
end


