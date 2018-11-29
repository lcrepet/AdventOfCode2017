class Reallocator
  attr_reader :number_of_cycles

  def initialize(memory_area)
    @memory_area = memory_area
    @number_of_cycles = 0
  end

  def run
    loop do
      reallocate(@memory_area.first_full_bank_index)
      @number_of_cycles += 1

      break if @memory_area.loop_detected?
    end
  end

  def reallocate(index)
    nb_blocks = @memory_area.number_of_blocks_in(index)
    @memory_area.empty_bank(index)
    @memory_area.distribute_blocks(nb_blocks, index + 1)
  end
end
