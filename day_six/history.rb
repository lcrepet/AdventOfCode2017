class History
  def initialize
    @first_node = Node.new(nil)
    @banks_already_added = false
    @counter = 0
  end

  def add(banks)
    @counter += 1
    current_node = @first_node

    0.upto(banks.count - 1) do |index|
      next_node = current_node.find_child(banks[index])
      unless next_node
        next_node = Node.new(banks[index])
        current_node.add_child(next_node)
      end
      current_node = next_node
    end

    set_banks_already_added(current_node)
  end

  def set_banks_already_added(node)
    if node.children.count > 0
      @banks_already_added = true
      @duplicate_bank = node.children.first.value
    else
      @banks_already_added = false
      node.add_child(Node.new(@counter))
    end
  end

  def last_banks_were_already_added?
    @banks_already_added
  end

  def loop_size
    @counter - @duplicate_bank
  end
end

class Node
  attr_reader :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(node)
    @children << node
  end

  def find_child(value)
    @children.find { |child| child.value == value }
  end
end
