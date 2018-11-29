require_relative 'simple_maze'

class TrickyMaze < SimpleMaze
  def increment_offset(index)
    if @jump_offsets[index] < 3
    @jump_offsets[index] += 1
    else
    @jump_offsets[index] -= 1
    end
  end
end
