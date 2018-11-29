class Passphrase
  def initialize(phrase)
    @words = phrase.split
  end

  def has_duplicates?
    @words.count > @words.uniq.count
  end

  def has_anagrams?
    sorted_words = @words.map { |word| word.split('').sort.join }
    @words.count > sorted_words.uniq.count
  end
end
