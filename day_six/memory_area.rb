require_relative 'history'

class MemoryArea
  def initialize(banks)
    @banks = banks
    @history = History.new
  end

  def number_of_blocks_in(index)
    @banks[index]
  end

  def empty_bank(index)
    @banks[index] = 0
  end

  def first_full_bank_index
    @banks.index(@banks.max)
  end

  def distribute_blocks(nb_blocks, from_index)
    to_index = from_index + nb_blocks - 1
    from_index.upto(to_index) do |index|
      @banks[index % @banks.count] += 1
    end

    @history.add(@banks)
  end

  def loop_detected?
    @history.last_banks_were_already_added?
  end

  def loop_size
    @history.loop_size
  end
end
