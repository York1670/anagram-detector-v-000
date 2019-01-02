class Anagram
  attr_accessor :word
  anagrams = [] 

  def initialize(word)
    @word = word.downcase
  end

  def match(some_words) 
    some_words.each do |some_word|
      if @word.split("").sort.join("") == some_word.downcase.split("").sort.join("")
        anagrams << some_word
      end
    end
    return anagrams
  end

end
