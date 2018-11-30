class Parser
  def parse(programs_str)
    programs_str_array = programs_str.split(';')
    programs_hash = {}

    programs_str_array.map do |program_str|
      program_info, children_info = program_str.split(' -> ')
      if children_info
        children_array = children_info.split(', ')
      end

      program_str = program_info.gsub('(', '').gsub(')', '')
      program_array = program_str.split

      programs_hash[program_array] = children_array || []
    end

    programs_hash
  end

  def build_programs(programs_hash)
    programs = {}

    programs_hash.each do |program, children|
      program = Program.new(program[0], program[1].to_i)

      children.each do |child|
        program.add_child(Program.new(child))
      end

      programs[program.name] = program
    end

    programs
  end
end
