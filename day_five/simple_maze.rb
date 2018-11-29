class SimpleMaze
  attr_reader :size

  def initialize(jump_offsets)
    @jump_offsets = jump_offsets
    @size = jump_offsets.size
  end

  def increment_offset(index)
    @jump_offsets[index] += 1
  end

  def offset_at(index)
    @jump_offsets[index]
  end
end
