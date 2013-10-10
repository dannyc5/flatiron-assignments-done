class Anagram
  attr_accessor :orig_word, :sorted_word

  def initialize(orig_word)
    @orig_word = orig_word
    @sorted_word = arrange_letters(orig_word)
  end

  def match(arr_to_check)
    match_arr = []
    
    arranged_arr = arrange_all_words(arr_to_check)

    arranged_arr.each_with_index do |word, i|
      match_arr << arr_to_check[i] if self.sorted_word == word
    end

    match_arr
  end

  def arrange_letters(word)
    word.chars.sort.join
  end

  def arrange_all_words(array_of_words)
    array_of_words.map do |word|
      arrange_letters(word)
    end
  end

end