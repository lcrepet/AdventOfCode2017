require_relative 'tower'

class Tower
  def initialize(programs)
    @programs_list = programs
  end

  def build
    build_children(first_program)
  end

  def first_program
    @first_rogram ||= compute_first_program
  end

  def unbalanced_program
    unbalanced(first_program)
  end

  private

  def compute_first_program
    all_programs = @programs_list.keys
    children_programs = @programs_list.values.map(&:children).flatten.map(&:name)

    first_program_name = (all_programs - children_programs).first
    @programs_list[first_program_name]
  end

  def build_children(program)
    program.children.each do |child|
      child_from_list = @programs_list[child.name]
      child.weight = child_from_list.weight
      child_from_list.children.each { |child_of__child| child.add_child(child_of__child) }

      build_children(child)
    end
  end

  def unbalanced(program)
    unless program.is_balanced?
      unbalanced_child = program.children.map { |child| unbalanced(child) }.compact.first
      unbalanced_child || program
    end
  end
end
