class Stream
  def initialize(dirty_groups_stream)
    @groups_stream = clean(dirty_groups_stream)
  end

  def score
    stack = []
    score = 0
    in_garbage = false

    @groups_stream.split('').each do |character|
      if in_garbage
        in_garbage = character != '>'
      else
        if character == '{'
          stack.push('')
        elsif character == '}'
          score += stack.size
          stack.pop
        elsif character == '<'
          in_garbage = true
        elsif character != ','
          stack.push(stack.pop + character)
        end
      end
    end

    score
  end

  def number_of_characters_in_garbage
    number_of_characters = 0
    in_garbage = false

    @groups_stream.split('').each do |character|
      if in_garbage
        if character == '>'
          in_garbage = false
        else
          number_of_characters += 1
        end
      else
        in_garbage = character == '<'
      end
    end

    number_of_characters
  end

  private

  def clean(input)
    clean_input = input.gsub('!!', '')
    clean_input.gsub(/[!]./, '')
  end
end
