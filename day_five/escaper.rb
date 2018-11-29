class Escaper
  attr_reader :number_of_steps

  def initialize(maze)
    @maze = maze
    @number_of_steps = 0
    @current_offset_index = 0
  end

  def escape
    while @current_offset_index < @maze.size
      jump
    end
  end

  private

  def jump
    offset = @maze.offset_at(@current_offset_index)
    @maze.increment_offset(@current_offset_index)
    @current_offset_index += offset
    @number_of_steps += 1
  end
end
