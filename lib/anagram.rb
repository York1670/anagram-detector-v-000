class Anagram
  attr_accessor :word :some_words

  anagrams = []

  def initialize(word,some_words)
    @word = word.downcase
    @some_words = some_words
  end

  def anagram_test
    @some_words.each do|some_word|
      if @word.length == some_word.length
        some_words.each do |some_word|
		        if @word.split("").sort.join("") == some_word.downcase.split("").sort.join("")
			           anagrams << some_word
		        end
	      end
      end
    end
    anagrams
  end
end
