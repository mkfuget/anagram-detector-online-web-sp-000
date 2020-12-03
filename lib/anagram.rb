# Your code goes here!
class Anagram
  attr_accessor :word 
  
  def self.word_to_letter_counts_map(word)
    out = {}
    word.split('').each do |letter|
      if(!out.has_key?(letter))
        out[letter] = 1;
      else 
        out[letter]+=1;
      end 
    end 
  end 
  
  def match(array)
    word_char_counts = Anagram.word_to_letter_counts_map(@word)
    out = []
    array.each do |array_word|
      is_match? = true
      array_word_char_counts = Anagram.word_to_letter_counts_map(array_word)
      word_char_counts.each |key, value|
        if(array_word_char_counts[key] != value)
          match = false 
        end 
      end 
      
      if(array_word.length != @word.length)
        match = false 
      end 
      
      if(match)
      
      
      

  