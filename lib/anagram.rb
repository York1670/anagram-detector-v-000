class Anagram
  attr_accessor :word, :some_words

  anagrams = []
  same_length = []

  def initialize(word,some_words)
    @word = word.downcase
    @some_words = some_words
  end

  def anagram_test
    @some_words.each do|some_word|
      if @word.length == some_word.length
        same_length << some_word
      else
        return "Try again"
      end
    end
    same_lengh.each do |some_word|
      if @word.split("").sort.join("") == some_word.downcase.split("").sort.join("")
        anagrams << some_word
      else
        return "try again"
      end
    end
    return anagrams
  end
