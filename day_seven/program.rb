class Program
  attr_reader :name, :children
  attr_accessor :weight

  def initialize(name, weight = nil)
    @name = name
    @weight = weight
    @children = []
  end

  def add_child(program)
    @children << program
  end

  def children_total_weights
    @children.map(&:total_weight)
  end

  def total_weight
    children_total_weights.sum + @weight
  end

  def is_balanced?
    children_total_weights.uniq.count < 2
  end
end
